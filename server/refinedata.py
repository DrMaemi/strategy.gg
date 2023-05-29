import pandas as pd
import numpy as np
import requests, time, pickle
from math import ceil

class Metadata:
    def __init__(self):
        self.raw_columns = [
            'blueTotalGolds','blueCurrentGolds','blueTotalLevel'\
                ,'blueAvgLevel','blueTotalMinionKills','blueTotalJungleMinionKills'
                ,'blueFirstBlood','blueKill','blueDeath','blueAssist'\
                ,'blueWardPlaced','blueWardKills','blueFirstTower','blueFirstInhibitor'\
                ,'blueFirstTowerLane'\
                ,'blueTowerKills','blueMidTowerKills','blueTopTowerKills','blueBotTowerKills'\
                ,'blueInhibitor','blueFirstDragon','blueDragonType','blueDragon','blueRiftHeralds'\
                ,'blueFirstBaron','blueBaron'
                ,'redTotalGolds','redCurrentGolds','redTotalLevel'\
                ,'redAvgLevel','redTotalMinionKills','redTotalJungleMinionKills'
                ,'redFirstBlood','redKill','redDeath','redAssist'\
                ,'redWardPlaced','redWardKills','redFirstTower','redFirstInhibitor'\
                ,'redFirstTowerLane'\
                ,'redTowerKills','redMidTowerKills','redTopTowerKills','redBotTowerKills'\
                ,'redInhibitor','redFirstDragon','redDragonType','redDragon','redRiftHeralds'\
                ,'redFirstBaron','redBaron'
        ]
        self.diff_columns = [
            "total_gold", # 0 numeric
            "current_gold", # 1 numeric
            "total_level", # 2 numeric
            "avg_level", # 3 numeric
            "kills_total_minion", # 4 numeric
            "kills_total_jungle_minion", # 5 numeric
            "first_blood", # 6 binary
            "kills", # 7
            "deaths", # 8
            "assists", # 9
            "place_wards", # 10
            "kills_wards", # 11
            "first_tower", # 12 binary
            "first_inhibitor", # 13 binary
            # "first_tower_lane", # 14 category, delete
            "kills_total_towers", # 15
            "kills_mid_towers", # 16
            "kills_top_towers", # 17
            "kills_bot_towers", # 18
            "kills_inhibitors", # 19
            "first_dragon", # 20
            # "dragon_type", # 21, delete 해서 총 24개 남는다.
            "total_dragons", # 22
            "rift_heralds", # 23
            "first_baron", # 24
            "total_barons" # 25
        ]

def refine_timeline_df(timeline_df):
    diff_columns = Metadata().diff_columns
    raw_columns = list(timeline_df.columns)
    refined_timeline_df = pd.DataFrame(columns=diff_columns)
    offset = 26
    place = 0
    for idx in range(offset):
        if idx != 14 and idx != 21: # first_tower_lane(:String), dragon_type(:String) 제외
            bf, rf = raw_columns[idx], raw_columns[idx+offset]
            series = timeline_df[bf] - timeline_df[rf]
            refined_timeline_df[diff_columns[place]] = series
            place += 1
    return refined_timeline_df # DataFrame

def get_timeline_features(timeline_data, time):
    columns = Metadata().raw_columns
    #json data에서 필요한 frames 데이터만
    frames = timeline_data['frames']
    #시작하고 n분 즉, 수집하고 싶은 시간까지의 인덱스가 어디있을지 추출하는 코드
    lc0 = 0 # 위치
    while True:
        try:
            timestamps = frames[lc0]['timestamp']
            if timestamps <= time: # n Minute를 설정(Ms단위의 timeline)
                lc0 += 1
            else:
                lc = lc0-1
                break
        except:
            lc = lc0 - 1
            break
    #participants 1~5 까지는 blueteam, 6~10까지는 redteam
    participant = frames[lc]['participantFrames']
    bluetotal_gold, bluecurrent_gold, bluetotal_level, \
    bluetotal_minionkill, bluetotal_jungleminionkill = [],[],[],[],[]
    redtotal_gold, redcurrent_gold, redtotal_level, \
    redtotal_minionkill, redtotal_jungleminionkill = [],[],[],[],[]
    participantLength = len(participant)
    if participantLength == 10:
        for i in range(participantLength):
            i = i+1
            if 1 <=participant[str(i)]['participantId'] <= 5:
                bluetotal_gold.append(participant[str(i)]['totalGold'])
                bluecurrent_gold.append(participant[str(i)]['currentGold'])
                bluetotal_level.append(participant[str(i)]['level'])
                bluetotal_minionkill.append(participant[str(i)]['minionsKilled'])
                bluetotal_jungleminionkill.append(participant[str(i)]['jungleMinionsKilled'])
            else:
                redtotal_gold.append(participant[str(i)]['totalGold'])
                redcurrent_gold.append(participant[str(i)]['currentGold'])
                redtotal_level.append(participant[str(i)]['level'])
                redtotal_minionkill.append(participant[str(i)]['minionsKilled'])
                redtotal_jungleminionkill.append(participant[str(i)]['jungleMinionsKilled'])
    elif participantLength == 11:
        for i in range(participantLength-1):
            i = i+1
            if 1 <=participant[i]['participantId'] <= 5:
                bluetotal_gold.append(participant[i]['totalGold'])
                bluecurrent_gold.append(participant[i]['currentGold'])
                bluetotal_level.append(participant[i]['level'])
                bluetotal_minionkill.append(participant[i]['minionsKilled'])
                bluetotal_jungleminionkill.append(participant[i]['jungleMinionsKilled'])
            else:
                redtotal_gold.append(participant[i]['totalGold'])
                redcurrent_gold.append(participant[i]['currentGold'])
                redtotal_level.append(participant[i]['level'])
                redtotal_minionkill.append(participant[i]['minionsKilled'])
                redtotal_jungleminionkill.append(participant[i]['jungleMinionsKilled'])
    #timestamp별로 독립적인 변수들을 나타내므로 n분까지의 데이터를 수집하기 위해서는 계속 중첩해서 
    #더해줘야 함
    blue_kill, red_kill = 0,0
    blue_firstkill, red_firstkill = 0,0
    blue_assist, red_assist = 0,0
    red_death, blue_death = 0,0
    blue_wardplace, red_wardplace = 0,0
    blue_wardkill, red_wardkill = 0,0
    blue_elite, red_elite = 0,0
    blue_rift, red_rift = 0,0
    blue_dragon, red_dragon = 0,0
    blue_baron, red_baron = 0,0
    blue_firstdragon, red_firstdragon = 0,0
    blue_dragontype, red_dragontype = [],[]
    blue_firstbaron, red_firstbaron = 0,0
    blue_tower,red_tower = 0,0
    blue_firsttower, red_firsttower = 0,0
    blue_firsttowerlane, red_firsttowerlane = [],[]
    blue_midtower, red_midtower = 0,0
    blue_toptower, red_toptower = 0,0
    blue_bottower, red_bottower = 0,0
    blue_inhibitor, red_inhibitor = 0,0
    blue_firstinhibitor, red_firstinhibitor = 0,0
    for y in range(1,lc+1):
        events = frames[y]['events']
        for x in range(len(events)):
            if events[x]['type'] == 'WARD_KILL':
                if 1 <= events[x]['killerId'] <= 5:
                    blue_wardkill += 1
                else:
                    red_wardkill += 1
            elif events[x]['type'] == 'WARD_PLACED':
                if 1 <= events[x]['creatorId'] <= 5:
                    blue_wardplace += 1
                else:
                    red_wardplace += 1
            elif events[x]['type'] == 'CHAMPION_KILL': 
                if 1 <= events[x]['killerId'] <= 5:
                    if red_kill ==0 and blue_kill ==0:
                        blue_firstkill += 1
                    else:
                        pass
                    blue_kill += 1
                    try:
                        blue_assist += len(events[x]['assistingParticipantIds'])
                    except: pass
                    red_death += 1
                else:
                    if red_kill ==0 and blue_kill ==0:
                        red_firstkill += 1
                    else:
                        pass
                    red_kill += 1
                    try:
                        red_assist += len(events[x]['assistingParticipantIds'])
                    except: pass
                    blue_death += 1
            elif events[x]['type'] == 'ELITE_MONSTER_KILL':
                if 1 <= events[x]['killerId'] <= 5:
                    blue_elite += 1
                    if events[x]['monsterType']== 'DRAGON':
                        if red_dragon ==0 and blue_dragon == 0:
                                blue_firstdragon += 1
                        else:
                            pass
                        blue_dragontype.append(events[x]['monsterSubType'])
                        blue_dragon += 1
                    elif events[x]['monsterType']== 'RIFTHERALD':
                        blue_rift += 1
                    elif events[x]['monsterType']== 'BARON_NASHOR':
                        if red_baron == 0 and blue_baron == 0:
                                blue_firstbaron += 1
                        else:
                            pass
                        blue_baron += 1
                else:
                    red_elite += 1
                    if events[x]['monsterType']== 'DRAGON':
                        if red_dragon ==0 and blue_dragon == 0:
                                red_firstdragon += 1
                        else:
                            pass
                        red_dragontype.append(events[x]['monsterSubType'])
                        red_dragon += 1
                    elif events[x]['monsterType']== 'RIFTHERALD':
                        red_rift += 1

                    elif events[x]['monsterType']== 'BARON_NASHOR':
                        if red_baron == 0 and blue_baron == 0:
                                red_firstbaron += 1
                        else:
                            pass
                        red_baron += 1
            elif events[x]['type'] == 'BUILDING_KILL':
                if 1 <= events[x]['killerId'] <= 5:
                    if events[x]['buildingType'] == 'TOWER_BUILDING':
                        if red_tower == 0 and blue_tower ==0:
                            blue_firsttower += 1
                            blue_firsttowerlane.append(events[x]['laneType'])
                        else:
                            pass
                        blue_tower += 1
                        if events[x]['laneType'] == 'MID_LANE':
                            blue_midtower += 1
                        elif events[x]['laneType'] == 'TOP_LANE':
                            blue_toptower += 1
                        elif events[x]['laneType'] == 'BOT_LANE':
                            blue_bottower += 1
                    elif events[x]['buildingType'] == 'INHIBITOR_BUILDING':
                        if red_inhibitor == 0 and blue_inhibitor ==0:
                            blue_firstinhibitor += 1
                        else:
                            pass
                        blue_inhibitor += 1
                else:
                    if events[x]['buildingType'] == 'TOWER_BUILDING':
                        if red_tower == 0 and blue_tower ==0:
                            red_firsttower += 1
                            red_firsttowerlane.append(events[x]['laneType'])
                        else:
                            pass
                        red_tower += 1
                        if events[x]['laneType'] == 'MID_LANE':
                            red_midtower += 1
                        elif events[x]['laneType'] == 'TOP_LANE':
                            red_toptower += 1
                        elif events[x]['laneType'] == 'BOT_LANE':
                            red_bottower += 1
                    elif events[x]['buildingType'] == 'INHIBITOR_BUILDING':
                        if red_inhibitor == 0 and blue_inhibitor ==0:
                            red_firstinhibitor += 1
                        else:
                            pass
                        red_inhibitor += 1
    data_list = [np.sum(bluetotal_gold)\
        ,np.sum(bluecurrent_gold),np.sum(bluetotal_level),np.mean(bluetotal_level)\
        ,np.sum(bluetotal_minionkill),np.sum(bluetotal_jungleminionkill)\
        ,blue_firstkill,blue_kill,blue_death,blue_assist,blue_wardplace,blue_wardkill\
        ,blue_firsttower,blue_firstinhibitor,blue_firsttowerlane,blue_tower\
        ,blue_midtower,blue_toptower,blue_bottower,blue_inhibitor,blue_firstdragon\
        ,blue_dragontype,blue_dragon,blue_rift,blue_firstbaron,blue_baron\
        ,np.sum(redtotal_gold)\
        ,np.sum(redcurrent_gold),np.sum(redtotal_level),np.mean(redtotal_level)\
        ,np.sum(redtotal_minionkill),np.sum(redtotal_jungleminionkill)\
        ,red_firstkill,red_kill,red_death,red_assist,red_wardplace,red_wardkill\
        ,red_firsttower,red_firstinhibitor,red_firsttowerlane,red_tower\
        ,red_midtower,red_toptower,red_bottower,red_inhibitor,red_firstdragon\
        ,red_dragontype,red_dragon,red_rift,red_firstbaron,red_baron]
    timeline_features = pd.DataFrame(np.array([data_list]), columns=columns)
    return timeline_features