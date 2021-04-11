import pandas as pd
import numpy as np
import requests
import pickle
import time

def getIDWinLoseList(gameIdList, api_key):
    result = []
    listLength = len(gameIdList)
    fatalError = False
    for idx in range(listLength):
        try:
            api_url = 'https://kr.api.riotgames.com/lol/match/v4/matches/'\
                        + str(gameIdList[idx]) + '?api_key=' + api_key
            req = requests.get(api_url)
            if (idx % 50 == 0):
                print('status : {0}, loop location : {1}/{2}, processing : {3}%'\
                      .format(req.status_code, idx, listLength, round((idx/listLength)*100, 1)))
            if req.status_code != 200:
                print('    [INVALID STATUS] : infinite loop start')
                print('    If it doesnt solve it in 3 minutes, it gives up')
                print('    loop location : {}/{}'.format(idx, listLength))
                start_time = time.time()
                cnt = 0
                while(req.status_code != 200):
                    print('    (%dth trial) Current status: %d' %(cnt, req.status_code))
                    if 180 < time.time() - start_time:
                        print("Fatal error: Too much delay. Loop terminated.")
                        fatalError = True
                        break
                    if req.status_code == 429:
                        print('    > api cost full')
                        print('    > try 10 second wait time')
                        time.sleep(10)
                    elif req.status_code == 503:
                        print('    > service available error')
                        print('    > try 10 second wait time')
                        time.sleep(10)
                    elif req.status_code == 403:
                        print('    > YOU NEED API RENEWAL')
                        print('    > PLEASE REGENERATE API KEY !!')
                        api_key = input("Enter New API KEY : ")
                        api_url = 'https://kr.api.riotgames.com/lol/match/v4/matches/'\
                                    + str(gameIdList[idx]) + '?api_key=' + api_key
                        start_time = time.time()
                        print("Restart")
                    else:
                        print('    > unexpected status returned!!')
                        print('    > program would retry to solve it')
                        print('    > if it lasts tool long, please click stop button in jupyter')
                        print('    > do not afraid, it will not stop program')
                        print('    > only passing to this sample would be happened')
                        print('    > Even if you dont press it, it give this sample up after 3 minutes')
                        time.sleep(10)
                    req = requests.get(api_url)
                    cnt += 1
                print('\n    total error wait time : %ds' %(time.time() - start_time))
                print('    RECOVERED!\n')
            if fatalError == False:
                keys = req.json().keys()
                values = req.json().values()
                MatchData = dict(zip(keys, values))
                blueWin, redWin = 0, 0
                if MatchData['teams'][0]['win'] == 'Win': blueWin = 1
                else: redWin = 1
                result.append((gameIdList[idx], blueWin, redWin, MatchData))
        except KeyboardInterrupt:
            print("\nKeyboardInterrupt; Terminate Loop")
            break
        except:
            print("Failed to get {}th match data".format(idx))
            pass
        finally:
            fatalError = False
    return result

def getTimelineResponseObject(IDWinLoseList, api_key):
    result = []
    listLength = len(IDWinLoseList)
    fatalError = False
    match_url = \
        'https://kr.api.riotgames.com/lol/match/v4/timelines/by-match/{}?api_key=' + api_key
    for idx in range(listLength):
        try:
            if len(IDWinLoseList[idx]) == 3:
                game_id, blueWin, redWin = IDWinLoseList[idx]
            elif len(IDWinLoseList[idx]) == 4:
                game_id, blueWin, redWin, matchData = IDWinLoseList[idx]
                matchData = {}
            req = requests.get(match_url.format(game_id))
            if (idx % 50 == 0):
                print('status : {0}, loop location : {1}/{2}, processing : {3}%'\
                      .format(req.status_code, idx, listLength, round((idx/listLength)*100, 1)))
            if req.status_code != 200:
                print('    [INVALID STATUS] : infinite loop start')
                print('    If it doesnt solve it in 3 minutes, it gives up')
                print('    loop location : {}/{}'.format(idx, listLength))
                start_time = time.time()
                cnt = 0
                while(req.status_code != 200):
                    print('    (%dth trial) Current status: %d' %(cnt, req.status_code))
                    if 180 < time.time() - start_time:
                        print("Fatal error: Too much delay. Loop terminated.")
                        fatalError = True
                        break
                    if req.status_code == 429:
                        print('    > api cost full')
                        print('    > try 10 second wait time')
                        time.sleep(10)
                    elif req.status_code == 503:
                        print('    > service available error')
                        print('    > try 10 second wait time')
                        time.sleep(10)
                    elif req.status_code == 403:
                        print('    > YOU NEED API RENEWAL')
                        print('    > PLEASE REGENERATE API KEY !!')
                        api_key = input("Enter New API KEY : ")
                        match_url = 'https://kr.api.riotgames.com/lol/match/v4/timelines/by-match/{}?api_key='+ api_key
                        start_time = time.time()
                        print("Restart")
                    else:
                        print('    > unexpected status returned!!')
                        print('    > program would retry to solve it')
                        print('    > if it lasts tool long, please click stop button in jupyter')
                        print('    > do not afraid, it will not stop program')
                        print('    > only passing to this sample would be happened')
                        print('    > Even if you dont press it, it give this sample up after 3 minutes')
                        time.sleep(10)
                    req = requests.get(match_url.format(game_id))
                    cnt += 1
                print('\n    total error wait time : %ds' %(time.time() - start_time))
                print('    RECOVERED!\n')
            if fatalError == False:
                result.append((game_id, req, blueWin, redWin))
            # gameId, response, win, lose
        except KeyboardInterrupt:
            print("\nKeyboardInterrupt; Terminate Loop")
            break
        except:
            print('    [FAILED] fail to get sample %d\n' %(idx))
            pass
        finally:
            fatalError = False
    return result

def calc(ans, timeline):   
    #수집할 컬럼 정의
    use_columns = ['gameId','blueWins','blueTotalGolds','blueCurrentGolds','blueTotalLevel'\
                           ,'blueAvgLevel','blueTotalMinionKills','blueTotalJungleMinionKills'
                           ,'blueFirstBlood','blueKill','blueDeath','blueAssist'\
                           ,'blueWardPlaced','blueWardKills','blueFirstTower','blueFirstInhibitor'\
                           ,'blueFirstTowerLane'\
                           ,'blueTowerKills','blueMidTowerKills','blueTopTowerKills','blueBotTowerKills'\
                           ,'blueInhibitor','blueFirstDragon','blueDragonType','blueDragon','blueRiftHeralds'\
                           ,'blueFirstBaron','blueBaron'
                           ,'redWins','redTotalGolds','redCurrentGolds','redTotalLevel'\
                           ,'redAvgLevel','redTotalMinionKills','redTotalJungleMinionKills'
                           ,'redFirstBlood','redKill','redDeath','redAssist'\
                           ,'redWardPlaced','redWardKills','redFirstTower','redFirstInhibitor'\
                           ,'redFirstTowerLane'\
                           ,'redTowerKills','redMidTowerKills','redTopTowerKills','redBotTowerKills'\
                           ,'redInhibitor','redFirstDragon','redDragonType','redDragon','redRiftHeralds'\
                           ,'redFirstBaron','redBaron']
    game_timeline_df1 = pd.DataFrame()
    game_timeline_df = pd.DataFrame()
    error_list = []
    for b in range(len(ans)):
        try:
            game_id, req, blueWin, redWin = ans[b][0], ans[b][1], ans[b][2], ans[b][3]
            #json data에서 필요한 frames 데이터만
            frames = req.json()['frames']
            #시작하고 n분 즉, 수집하고 싶은 시간까지의 인덱스가 어디있을지 추출하는 코드
            lc0 = 0 # 위치
            while True:
                try:
                    timestamps = frames[lc0]['timestamp']
                    if timestamps <= timeline: # n Minute를 설정(Ms단위의 timeline)
                        lc0 += 1
                    else:
                        lc = lc0-1
                        break
                except:
                    lc = lc0 - 1
                    break
            # participants 1~5 까지는 blueteam, 6~10까지는 redteam
            participant = frames[lc]['participantFrames']
            bluetotal_gold, bluecurrent_gold, bluetotal_level, \
            bluetotal_minionkill, bluetotal_jungleminionkill = [],[],[],[],[]
            redtotal_gold, redcurrent_gold, redtotal_level, \
            redtotal_minionkill, redtotal_jungleminionkill = [],[],[],[],[]
            for i in range(len(participant)):
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
                            blue_assist += len(events[x]['assistingParticipantIds'])
                            red_death += 1
                        else:
                            if red_kill ==0 and blue_kill ==0:
                                red_firstkill += 1
                            else:
                                pass
                            red_kill += 1
                            red_assist += len(events[x]['assistingParticipantIds'])
                            blue_death += 1
                    elif events[x]['type'] == 'ELITE_MONSTER_KILL':
                        if 1 <= events[x]['killerId'] <= 5: # blue team
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
                                if red_baron ==0 and blue_baron == 0:
                                     blue_firstbaron += 1
                                else:
                                    pass
                                blue_baron += 1
                        else: # red team
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
                                if red_baron ==0 and blue_baron == 0:
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
            data_list = [game_id,blueWin,np.sum(bluetotal_gold)\
                ,np.sum(bluecurrent_gold),np.sum(bluetotal_level),np.mean(bluetotal_level)\
                ,np.sum(bluetotal_minionkill),np.sum(bluetotal_jungleminionkill)\
                ,blue_firstkill,blue_kill,blue_death,blue_assist,blue_wardplace,blue_wardkill\
                ,blue_firsttower,blue_firstinhibitor,blue_firsttowerlane,blue_tower\
                ,blue_midtower,blue_toptower,blue_bottower,blue_inhibitor,blue_firstdragon\
                ,blue_dragontype,blue_dragon,blue_rift,blue_firstbaron, blue_baron\
                ,redWin,np.sum(redtotal_gold)\
                ,np.sum(redcurrent_gold),np.sum(redtotal_level),np.mean(redtotal_level)\
                ,np.sum(redtotal_minionkill),np.sum(redtotal_jungleminionkill)\
                ,red_firstkill,red_kill,red_death,red_assist,red_wardplace,red_wardkill\
                ,red_firsttower,red_firstinhibitor,red_firsttowerlane,red_tower\
                ,red_midtower,red_toptower,red_bottower,red_inhibitor,red_firstdragon\
                ,red_dragontype,red_dragon,red_rift,red_firstbaron, red_baron]

            game_timeline_df0 = pd.DataFrame(np.array([data_list]), columns = use_columns)   
            game_timeline_df1 = game_timeline_df1.append(game_timeline_df0)

            #print("{}th sample data crawling success".format(b))
            if b != 0 and b % 2000 == 0 : #feature가 많다보니 반복문 2000씩 끊어서 수집
                game_timeline_df = game_timeline_df.append(game_timeline_df1)
                game_timeline_df1 = pd.DataFrame()
                print("{}th sample data crawling success".format(b))
#        except: #에러발생 시 바로 다음 반복문으로 넘어가게끔
#            print('error visual')
#            error_list.append(b)
#            pass
        except ZeroDivisionError:
            pass
    game_timeline_df = game_timeline_df.append(game_timeline_df1)
    return game_timeline_df
