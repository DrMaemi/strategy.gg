import pandas as pd
import numpy as np
import processdb as db
from refinedata import Metadata
from sklearn.preprocessing import StandardScaler

diff_columns = Metadata().diff_columns
scaler = StandardScaler()
# target features

posTypes = [
    "탑", "블루팀 위쪽 정글", "레드팀 위쪽 정글", "전령/바론 앞", # 0 1 2 3
    "미드", "블루팀 아래쪽 정글", "레드팀 아래쪽 정글", "용 앞", # 4 5 6 7
    "봇" # 8
    ]

class TargetFeatures:
    def __init__(self):
        self.tf_b5 = [
            "first_blood",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "total_level", "place_wards", "kills_wards"
        ]
        self.tf_b8 = [
            "first_blood", "first_dragon",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "total_dragons",
            "total_level", "tower_shield", "place_wards", "kills_wards"
        ]
        self.tf_b14 = [
            "first_blood", "first_dragon", "first_tower",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "kills_mid_towers", "kills_top_towers", "kills_bot_towers",
            "total_dragons", "rift_heralds",
            "total_level", "tower_shield", "place_wards", "kills_wards"
        ]
        self.tf_b20 = [
            "first_blood", "first_dragon", "first_tower", "first_inhibitor",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "kills_mid_towers", "kills_top_towers", "kills_bot_towers",
            "total_dragons", "kills_inhibitors", "rift_heralds",
            "total_level", "place_wards", "kills_wards"
        ]
        self.tf_after = [
            "first_blood", "first_dragon", "first_tower", "first_inhibitor", "first_baron",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "kills_mid_towers", "kills_top_towers", "kills_bot_towers",
            "total_dragons", "kills_inhibitors", "total_barons",
            "total_level", "place_wards", "kills_wards"
        ]

def makeCompetsByLane(team_belongs_to, lane_info, target_pframes):
    competsByLane = {}
    lanes = ["TOP", "JUNGLE", "MID", "BOTTOM", "SUPPORTER"]
    for lane in lanes:
        if team_belongs_to == 0: # 블루팀이 아군
            for p_id in range(1, 6):
                if lane_info[p_id-1] == lane:
                    for pframe in target_pframes[1:]:
                        if pframe['participantId'] == p_id:
                            target_pframe = pframe
                            break
                    friendLevel, friendGold = target_pframe['level'], target_pframe['totalGold']
                    break
            for p_id in range(6, 11):
                if lane_info[p_id-1] == lane:
                    for pframe in target_pframes[1:]:
                        if pframe['participantId'] == p_id:
                            target_pframe = pframe
                            break
                    enemyLevel, enemyGold = target_pframe['level'], target_pframe['totalGold']
                    break
            if lane == "TOP": laneKey = "탑"
            elif lane == "JUNGLE": laneKey = "정글"
            elif lane == "MID": laneKey = "미드"
            elif lane == "BOTTOM": laneKey = "봇"
            elif lane == "SUPPORTER": laneKey = "서폿"
            try:
                if (friendLevel-enemyLevel > 0) and (friendGold-enemyGold > 500): # 아군이 라인전을 이기고 있어..!
                    competsByLane[laneKey] = 1
                elif (friendLevel-enemyLevel < 0) and (friendGold-enemyGold < 500): # 아군이 라인전을 지고 있어 ㅜ
                    competsByLane[laneKey] = -1
                else: # 애매한데?
                    competsByLane[laneKey] = 0
            except: competsByLane[laneKey] = 0
        else: # 레드팀이 아군
            for p_id in range(6, 11):
                if lane_info[p_id-1] == lane:
                    for pframe in target_pframes[1:]:
                        if pframe['participantId'] == p_id:
                            target_pframe = pframe
                            break
                    friendLevel, friendGold = target_pframe['level'], target_pframe['totalGold']
                    break
            for p_id in range(1, 6):
                if lane_info[p_id-1] == lane:
                    for pframe in target_pframes[1:]:
                        if pframe['participantId'] == p_id:
                            target_pframe = pframe
                            break
                    enemyLevel, enemyGold = target_pframe['level'], target_pframe['totalGold']
                    break
            if lane == "TOP": laneKey = "탑"
            elif lane == "JUNGLE": laneKey = "정글"
            elif lane == "MID": laneKey = "미드"
            elif lane == "BOTTOM": laneKey = "봇"
            elif lane == "SUPPORTER": laneKey = "서폿"
            try:
                if (friendLevel-enemyLevel > 0) and (friendGold-enemyGold > 500): # 아군이 라인전을 이기고 있어..!
                    competsByLane[laneKey] = 1
                elif (friendLevel-enemyLevel < 0) and (friendGold-enemyGold < 500): # 아군이 라인전을 지고 있어 ㅜ
                    competsByLane[laneKey] = -1
                else: # 애매한데?
                    competsByLane[laneKey] = 0
            except: competsByLane[laneKey] = 0
    return competsByLane

def distinguish_pos(x, y):
    # TOP
    if ((y>3000) and (570<x and x<1710)) or ((x<12000) and (13090<y and y<14230)):
        return "탑"
    elif ((x>3000) and (570<y and y<1710)) or ((y<12000) and (13090<x and x<14230)):
        return "봇"
    elif (2120<x and x<12880) and (y<x+820 and y>x-820):
        return "미드"
    else:
        if y<-x+14180 and y>x+820: result = "블루팀 위쪽 정글"
        elif y<-x+14180 and y<x-820: result = "블루팀 아래쪽 정글"
        elif y>-x+15820 and y>x+820: result = "레드팀 위쪽 정글"
        elif y>-x+15820 and y<x-820: result = "레드팀 아래쪽 정글"
        else:
            if y>x: result = "전령/바론 앞"
            else: result = "용 앞"
        return result

def before5(tier, point, feedback, target_id, lane_info, target_pframes, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_b5 = TargetFeatures().tf_b5
    if team_belongs_to == 0: # blue team
        team = "blue"
    else:
        team = "red"
    statistics = db.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    if latestState['first_blood'] == 0: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 500
        if statistics['kills'] > 1:
            varState['first_blood'] += 1
        else:
            varState['first_blood'] += statistics['kills']
        varState['kills'] += statistics['kills']
        varState['deaths'] -= statistics['deaths']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    else: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    for tf in tf_b5[1:]:
        varState = latestState.copy()
        if tf == "kills":
            varState['total_gold'] += 300*statistics['kills']
            if statistics['assists'] != 0:
                if team == "blue": varState['total_gold'] += 75
                else: varState['total_gold'] -= 75
            varState['kills'] += statistics['kills']
            varState['deaths'] -= statistics['deaths'] #데스는 거꾸로 더해줘야 함
        elif tf == "kills_total_minion":
            varState['total_gold'] += 17*statistics['kills_total_minion']
            varState['kills_total_minion'] += statistics['kills_total_minion']
        elif tf == "kills_total_jungle_minion":
            varState['total_gold'] += 35*statistics['kills_total_jungle_minion']
            varState['kills_total_jungle_minion'] += statistics['kills_total_jungle_minion']
        elif tf == "total_level":
            varState['total_level'] += statistics['total_level']
            varState['avg_level'] += statistics['avg_level']
        elif tf == "place_wards":
            varState['place_wards'] += statistics['place_wards']
        elif tf == "kills_wards":
            varState['total_gold'] += 20*statistics['kills_wards']
            varState['kills_wards'] += statistics['kills_wards']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    kill = False
    myLane = lane_info[target_id-1]
    for pframe in target_pframes[1:]:
        if pframe['participantId'] == target_id:
            mypframe = pframe
            break
    mypos = distinguish_pos(mypframe['position']['x'], mypframe['position']['y'])
    competsByLane = makeCompetsByLane(team_belongs_to, lane_info, target_pframes)
    favorableLanes, unfavorableLanes, nTnLanes = [], [], []
    for lane, value in competsByLane.items():
        if value == 1: favorableLanes.append(lane)
        elif value == -1: unfavorableLanes.append(lane)
        else: nTnLanes.append(lane)
    loopCnt = 0
    while loopCnt < 2 or len(strategy) < 2: # 두 번만 반복, 가장 영향 높은 feature 두개 선정
        loopCnt += 1
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b5[twrIdx]
        if tf == "first_blood":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("효율적인 정글 동선으로 공격로에 도움을 주거나 카정을 통해 선취점을 가져가도록 노력하세요.")
                elif myLane == "SUPPORTER":
                    strategy.append("봇 동선 상 와드 위치를 체크, 정글이 봇을 들를 경우 어느 경로로 와야 하는지 알려주세요. 원딜과 호흡을 맞추어 선취점을 가져가도록 노력하세요.")
                else:
                    if myLane == "TOP":
                        if "탑" in favorableLanes:
                            strategy.append("라인전을 유리하게 가져가고 있군요. cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                        else:
                            strategy.append("cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                    if myLane == "MID":
                        if "미드" in favorableLanes:
                            strategy.append("라인전을 유리하게 가져가고 있군요. cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                        else:
                            strategy.append("cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                    if myLane == "BOTTOM":
                        if "봇" in favorableLanes:
                            strategy.append("라인전을 유리하게 가져가고 있군요. cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                        else:
                            strategy.append("cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                kill = True
        elif tf == "kills":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("효율적인 정글 동선으로 공격로에 도움을 주거나 카정을 통해 킬을 하도록 노력하세요. 현 시점 정글링이 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                elif myLane == "SUPPORTER":
                    strategy.append("봇 동선 상 와드 위치를 체크, 정글이 봇을 들를 경우 어느 경로로 와야 하는지 알려주세요. 원딜과 호흡을 맞추어 라인전을 이기도록 노력하세요.")
                else:
                    if myLane == "TOP":
                        if "탑" in favorableLanes:
                            strategy.append("라인전을 유리하게 가져가고 있군요. cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                        else:
                            strategy.append("cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                    if myLane == "MID":
                        if "미드" in favorableLanes:
                            strategy.append("라인전을 유리하게 가져가고 있군요. cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                        else:
                            strategy.append("cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                    if myLane == "BOTTOM":
                        if "봇" in favorableLanes:
                            strategy.append("라인전을 유리하게 가져가고 있군요. cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                        else:
                            strategy.append("cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 킬을 가져가도록 노력하세요. 현 시점 cs가 뒤쳐지더라도 킬을 하는 것이 승률에 유리합니다.")
                kill = True
        elif tf == "kills_total_minion":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("정글링을 하는 것보다 갱을 시도하는 것이 더 좋습니다. 킬을 하지 못하더라도 상대를 귀환시켜 아군이 cs차이를 내도록 돕는 것이 승률에 유리합니다.")
                elif myLane == "SUPPORTER":
                    strategy.append("원딜이 cs를 잘 먹을 수 있도록 보조해주세요. 킬을 하는 것도 좋지만 원딜이 cs격차만 내더라도 승률에 상당히 유리합니다.")
                else:
                    strategy.append("킬 하는 것도 좋지만 딜교환을 하며 라인전 우위를 가져가고 cs격차만 내더라도 승률에 상당히 유리합니다.")
            kill = True
        elif tf == "kills_total_jungle_minion":
            if myLane == "JUNGLE":
                if not kill:
                    strategy.append("정글링 격차를 내도록 노력하세요. 아군이 적 정글에게 갱킹을 당해 라인에서 손해를 보더라도 정글링을 하는 것이 승률에 유리합니다.")
                    kill = True
            elif myLane == "SUPPORTER":
                strategy.append("맵리딩을 통해 상대 정글의 동선을 파악하세요. 아군 정글이 안전하게 정글링을 하도록 하거나 카정을 할 수 있도록 도와주세요. 정글링 격차가 승률에 유리합니다.")
            else:
                if myLane == "TOP":
                    if "탑" in favorableLanes:
                        strategy.append("라인 주도권을 갖고 있군요. 탑을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                    else:
                        strategy.append("라인전이 다소 불리하게 흘러가고 있군요. 탑 라인 주도권을 뺏기지 않도록 노력하세요. 라인 주도권을 뺏을 수 있다면 탑을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                if myLane == "MID":
                    if "미드" in favorableLanes:
                        strategy.append("라인 주도권을 갖고 있군요. 미드를 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                    else:
                        strategy.append("라인전이 다소 불리하게 흘러가고 있군요. 미드 라인 주도권을 뺏기지 않도록 노력하세요. 라인 주도권을 뺏을 수 있다면 미드를 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                if myLane == "BOTTOM":
                    if "봇" in favorableLanes:
                        strategy.append("라인 주도권을 갖고 있군요. 봇을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                    else:
                        strategy.append("라인전이 다소 불리하게 흘러가고 있군요. 바텀 라인전 주도권을 뺏기지 않도록 노력하세요. 라인 주도권을 뺏을 수 있다면 봇을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
        elif tf == "total_level":
            strategy.append("라인 관리와 귀환 타이밍 조절을 통해 레벨 성장을 하세요. 단순히 레벨을 높이기만 하더라도 충분히 승률에 유리합니다.")
        elif tf == "place_wards":
            if myLane == "JUNGLE":
                strategy.append("정글을 돌며 틈틈히 상대 정글 주요 경로에 와드를 해주세요. 시야 확보를 통해 아군의 맵리딩을 돕는 것만으로도 승률에 유리합니다. 또한 해당 시야를 통해 상대 정글 동선을 파악하고 역갱 등을 준비하세요. 현 시점에서 시야를 장악하는 것이 승률에 유리합니다.")
            else:
                strategy.append("본인 라인의 갱킹/로밍 주요 경로에 와드를 하세요. 현 시점에서 갱킹/로밍을 방지하는 것만으로도 승률에 유리합니다.")
        elif tf == "kills_wards":
            if myLane == "JUNGLE":
                strategy.append("갱킹을 시도하며 시야를 제거하세요. 갱킹을 성공시켜도 좋지만 현 시점에서 시야만 제거하더라도 승률에 유리합니다. 갱킹에 실패했더라도 후에 더 좋은 기회를 만들 수 있을겁니다.")
            else:
                strategy.append("상대 라이너가 설치한 와드가 있다면 제거하도록 노력하세요. 현 시점에서 시야를 지우고 갱킹/로밍 압박을 가하는 것만으로도 승률에 상당히 유리합니다.")
        del winrate_var[twrIdx]
        del tf_b5[twrIdx]
    return strategy

def before8(tier, point, feedback, target_id, lane_info, target_pframes, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_b8 = TargetFeatures().tf_b8
    if team_belongs_to == 0: # blue team
        team = "blue"
    else:
        team = "red"
    statistics = db.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    # 퍼블 검사
    if latestState['first_blood'] != 0: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    else: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 500
        if statistics['kills'] > 1:
            varState['first_blood'] += 1
        else:
            varState['first_blood'] += statistics['kills']
        varState['kills'] += statistics['kills']
        varState['deaths'] -= statistics['deaths']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 용 검사
    if latestState['first_dragon'] != 0: # 이미 첫 용이 먹힌 경우
        winrate_var.append(0)
    else: # 아직 첫 용이 먹히지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 25*statistics['first_dragon']
        varState['first_dragon'] += statistics['first_dragon']
        varState['total_dragons'] += statistics['first_dragon']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 퍼블, 첫 용 외 feature들 분석 시작
    for tf in tf_b8[2:]:
        varState = latestState.copy()
        if tf == "kills": # 킬
            varState['total_gold'] += 300*statistics['kills']
            if statistics['assists'] != 0: # 갱킹이나 로밍으로 인해 킬이 발생한 경우
                if team == "blue": varState['total_gold'] += 100
                else: varState['total_gold'] -= 100
            varState['kills'] += statistics['kills']
            varState['deaths'] -= statistics['deaths'] #데스는 거꾸로 더해줘야 함
            varState['assists'] += statistics['assists']
        elif tf == "kills_total_minion": # 미니언
            varState['total_gold'] += 18*statistics['kills_total_minion']
            varState['kills_total_minion'] += statistics['kills_total_minion']
        elif tf == "kills_total_jungle_minion": # 정글링
            varState['total_gold'] += 36*statistics['kills_total_jungle_minion']
            varState['kills_total_jungle_minion'] += statistics['kills_total_jungle_minion']
        elif tf == "total_dragons": # 용 처치 횟수
            varState['total_gold'] += 25*statistics['total_dragons']
            varState['total_dragons'] += statistics['total_dragons']
        elif tf == "total_level": # 성장, 레벨링
            varState['total_level'] += statistics['total_level']
            varState['avg_level'] += statistics['avg_level']
        elif tf == "tower_shield": # 라인압박. cs는 고려하지 않고 그냥 골드만 증가시켜봄
            if team == "blue": varState["total_gold"] += 200
            else: varState['total_gold'] -= 200
        elif tf == "place_wards":
            varState['place_wards'] += statistics['place_wards']
        elif tf == "kills_wards":
            varState['total_gold'] += 20*statistics['kills_wards']
            varState['kills_wards'] += statistics['kills_wards']
        # 기대승률 분석
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    kill, dragon = False, False
    myLane = lane_info[target_id-1]
    for pframe in target_pframes[1:]:
        if pframe['participantId'] == target_id:
            mypframe = pframe
            break
    mypos = distinguish_pos(mypframe['position']['x'], mypframe['position']['y'])
    competsByLane = makeCompetsByLane(team_belongs_to, lane_info, target_pframes)
    favorableLanes, unfavorableLanes, nTnLanes = [], [], []
    for lane, value in competsByLane.items():
        if value == 1: favorableLanes.append(lane)
        elif value == -1: unfavorableLanes.append(lane)
        else: nTnLanes.append(lane)
    numFavorableLanes = len(favorableLanes)
    numUnfavorableLanes = len(unfavorableLanes)
    numNTNLanes = len(nTnLanes)
    loopCnt = 0
    while loopCnt < 2 or len(strategy) < 2: # 두 번만 반복, 가장 영향 높은 feature 두개 선정
        loopCnt += 1
        twrIdx = winrate_var.index(max(winrate_var)) # target win rate index
        tf = tf_b8[twrIdx]
        if tf == "first_blood":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("효율적인 정글 동선으로 공격로에 도움을 주거나 카정을 통해 선취점을 가져가도록 노력하세요.")
                    copiedFavorableLanes = favorableLanes.copy()
                    copiedUnfavorableLanes = unfavorableLanes.copy()
                    copiedNTNLanes = nTnLanes.copy()
                    if "정글" in favorableLanes: copiedFavorableLanes.remove("정글")
                    if "정글" in unfavorableLanes: copiedUnfavorableLanes.remove("정글")
                    if "정글" in nTnLanes: copiedNTNLanes.remove("정글")
                    if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                    if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                    if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                    numFavorableLanes = len(copiedFavorableLanes)
                    numUnfavorableLanes = len(copiedUnfavorableLanes)
                    numNTNLanes = len(copiedNTNLanes)
                    if numFavorableLanes == 0 and numNTNLanes < 2:
                        strategy.append("모든 라인전이 열세라 갱킹이 힘들 수 있습니다. 냉정하게 판단하여 갱킹을 시도하세요.")
                    elif numFavorableLanes != 0 and numUnfavorableLanes != 0:
                        strategy.append("{} 라인이 우세하고, {} 라인이 열세입니다. 보통 우세한 라인을 갱킹하는 것이 게임을 풀어나가기 쉽습니다.".format(copiedFavorableLanes, copiedUnfavorableLanes))
                    elif numUnfavorableLanes == 0:
                        strategy.append("모든 라인이 무난하게 라인전을 진행하고 있습니다. 기회가 되는 대로 갱킹을 시도해보세요.")
                elif myLane == "SUPPORTER":
                    copiedFavorableLanes = favorableLanes.copy()
                    copiedUnfavorableLanes = unfavorableLanes.copy()
                    copiedNTNLanes = nTnLanes.copy()
                    if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                    if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                    if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                    numFavorableLanes = len(copiedFavorableLanes)
                    numUnfavorableLanes = len(copiedUnfavorableLanes)
                    numNTNLanes = len(copiedNTNLanes)
                    strategy.append("맵 전반적 아군/적의 시야를 파악하고, 정글이 봇을 들를 경우 어느 경로로 와야 하는지 알려주세요. 원딜과 호흡을 맞추어 선취점을 가져가도록 노력하세요.")
                    if "정글" in favorableLanes:
                        strategy.append("아군 정글이 적 정글보다 우세합니다. 아군 정글이 봇 동선을 자주 이용한다면 함께 다니며 정글 시야를 장악하고 게임을 풀어가세요.")
                    if numUnfavorableLanes != 0:
                        strategy.append("{} 라인이 지고있군요. 이 타이밍에 정글과 협동하여 로밍을 시도한다면 상대가 예측하기 쉽지 않습니다. 로밍을 시도하여 게임을 풀어가보세요.".format(copiedUnfavorableLanes))
                else:
                    if myLane == "TOP": laneKey = "탑"
                    elif myLane == "MID": laneKey = "미드"
                    elif myLane == "BOTTOM": laneKey = "봇"
                    if laneKey in favorableLanes:
                        strategy.append("라인전을 이기고 있네요.")                    
                    elif laneKey in unfavorableLanes:
                        strategy.append("라인전을 지고있군요. 적 정글의 갱킹을 조심하세요. 상대방의 무리한 플레이나 포탑 다이브를 노리세요.")
                    strategy.append("cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 선취점을 가져가도록 노력하세요.")
                kill = True
        elif tf == "first_dragon":
            if not dragon:
                numFavorableLanes = len(favorableLanes)
                numUnfavorableLanes = len(unfavorableLanes)
                numNTNLanes = len(nTnLanes)
                if posTypes.index(mypos) < 5: # 위쪽 동선
                    strategy.append("당신의 위치는 {}이군요. 용 준비를 위해 바텀의 상황을 주시하세요. 현 시점 첫 용 선점이 중요합니다.".format(mypos))
                else : # 미드거나 아래 동선
                    strategy.append("당신의 위치는 {}이군요. 현 시점 첫 용 선점이 중요합니다. 언제든지 합류할 준비를 하세요.".format(mypos))
                if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                    strategy.append("즉시 용 처치를 시도하여 첫 용을 선점하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다.")
                elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                    strategy.append("상대가 용 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 용을 뺏어야 합니다.")
                else:
                    strategy.append("용 주변 시야를 장악하고 첫 용 선점을 위해 준비하세요. 기회가 된다면 용 처치를 시도해야 합니다.")
                dragon = True
        elif tf == "kills":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("효율적인 정글 동선으로 공격로에 도움을 주거나 카정을 통해 킬을 하도록 노력하세요.")
                    copiedFavorableLanes = favorableLanes.copy()
                    copiedUnfavorableLanes = unfavorableLanes.copy()
                    copiedNTNLanes = nTnLanes.copy()
                    if "정글" in favorableLanes: copiedFavorableLanes.remove("정글")
                    if "정글" in unfavorableLanes: copiedUnfavorableLanes.remove("정글")
                    if "정글" in nTnLanes: copiedNTNLanes.remove("정글")
                    if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                    if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                    if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                    numFavorableLanes = len(copiedFavorableLanes)
                    numUnfavorableLanes = len(copiedUnfavorableLanes)
                    numNTNLanes = len(copiedNTNLanes)
                    if numFavorableLanes == 0 and numNTNLanes < 2:
                        strategy.append("모든 라인전이 열세라 갱킹이 힘들 수 있습니다. 냉정하게 판단하여 갱킹을 시도하세요.")
                    elif numFavorableLanes != 0 and numUnfavorableLanes != 0:
                        strategy.append("{} 라인이 우세하고, {} 라인이 열세입니다. 보통 우세한 라인을 갱킹하는 것이 게임을 풀어나가기 쉽습니다.".format(copiedFavorableLanes, copiedUnfavorableLanes))
                    elif numUnfavorableLanes == 0:
                        strategy.append("모든 라인이 무난하게 라인전을 진행하고 있습니다. 기회가 되는 대로 갱킹을 시도해보세요.")
                elif myLane == "SUPPORTER":
                    copiedFavorableLanes = favorableLanes.copy()
                    copiedUnfavorableLanes = unfavorableLanes.copy()
                    copiedNTNLanes = nTnLanes.copy()
                    if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                    if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                    if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                    numFavorableLanes = len(copiedFavorableLanes)
                    numUnfavorableLanes = len(copiedUnfavorableLanes)
                    numNTNLanes = len(copiedNTNLanes)
                    strategy.append("맵 전반적 아군/적의 시야를 파악하고, 정글이 봇을 들를 경우 어느 경로로 와야 하는지 알려주세요. 원딜과 호흡을 맞추어 킬을 하도록 노력하세요.")
                    if "정글" in favorableLanes:
                        strategy.append("아군 정글이 적 정글보다 우세합니다. 아군 정글이 봇 동선을 자주 이용한다면 함께 다니며 정글 시야를 장악하고 게임을 풀어가세요.")
                    if numUnfavorableLanes != 0:
                        strategy.append("{} 라인이 지고있군요. 이 타이밍에 정글과 협동하여 로밍을 시도한다면 상대가 예측하기 쉽지 않습니다. 로밍을 시도하여 게임을 풀어가보세요.".format(copiedUnfavorableLanes))
                else:
                    if myLane == "TOP": laneKey = "탑"
                    elif myLane == "MID": laneKey = "미드"
                    elif myLane == "BOTTOM": laneKey = "봇"
                    # 정글 위치 알아내기
                    if team_belongs_to == 0: # 블루팀
                        for p_id in range(5, 10):
                            if lane_info[p_id] == "JUNGLE":
                                enemyJungleId = p_id + 1
                                break
                        try: enemyJunglePos = distinguish_pos(target_pframes[enemyJungleId]['position']['x'], target_pframes[enemyJungleId]['position']['y'])
                        except: enemyJunglePos = "미드"
                    else:
                        for p_id in range(5):
                            if lane_info[p_id] == "JUNGLE":
                                enemyJungleId = p_id + 1
                                break
                        try: enemyJunglePos = distinguish_pos(target_pframes[enemyJungleId]['position']['x'], target_pframes[enemyJungleId]['position']['y'])
                        except: enemyJunglePos = "미드"
                    if laneKey in favorableLanes:
                        strategy.append("{} 라인전을 이기고 있네요. 상대 정글 위치는 {}쪽입니다. 2:1도 거뜬하다면 과감한 딜교환을 통해 무자비한 라인 압박을 시도하세요.".format(laneKey, enemyJunglePos))
                    elif laneKey in unfavorableLanes:
                        strategy.append("{} 라인전을 지고있군요. 상대 정글 위치는 {}쪽입니다. 적 정글의 갱킹을 조심하세요. 상대방의 무리한 플레이나 포탑 다이브를 노리세요.".format(laneKey, enemyJunglePos))
                    strategy.append("다른 것들을 내주더라도 킬을 하도록 노력하세요. 현 시점에서 킬을 따내는 것이 승률에 유리합니다.")
                kill = True
        elif tf == "kills_total_minion":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("정글링을 하는 것보다 갱을 시도하는 것이 더 좋습니다. 킬을 하지 못하더라도 상대를 귀환시켜 아군이 cs차이를 내도록 돕는 것이 승률에 유리합니다.")
                elif myLane == "SUPPORTER":
                    strategy.append("원딜이 cs를 잘 먹을 수 있도록 보조해주세요. 킬을 하는 것도 좋지만 원딜이 cs격차만 내더라도 승률에 상당히 유리합니다.")
                else:
                    strategy.append("킬 하는 것도 좋지만 딜교환을 하며 라인전 우위를 가져가고 cs격차만 내더라도 승률에 상당히 유리합니다.")
            kill = True
        elif tf == "kills_total_jungle_minion":
            if myLane == "JUNGLE":
                if not kill:
                    strategy.append("정글링 격차를 내도록 노력하세요. 아군이 적 정글에게 갱킹을 당해 라인에서 손해를 보더라도 정글링을 하는 것이 승률에 유리합니다.")
                    kill = True
            elif myLane == "SUPPORTER":
                strategy.append("맵리딩을 통해 상대 정글의 동선을 파악하세요. 아군 정글이 안전하게 정글링을 하도록 하거나 카정을 할 수 있도록 도와주세요. 정글링 격차가 승률에 유리합니다.")
            else:
                if myLane == "TOP":
                    if "탑" in favorableLanes:
                        strategy.append("라인 주도권을 갖고 있군요. 탑을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                    else:
                        strategy.append("라인전이 다소 불리하게 흘러가고 있군요. 탑 라인 주도권을 뺏기지 않도록 노력하세요. 라인 주도권을 뺏을 수 있다면 탑을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                if myLane == "MID":
                    if "미드" in favorableLanes:
                        strategy.append("라인 주도권을 갖고 있군요. 미드를 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                    else:
                        strategy.append("라인전이 다소 불리하게 흘러가고 있군요. 미드 라인 주도권을 뺏기지 않도록 노력하세요. 라인 주도권을 뺏을 수 있다면 미드를 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                if myLane == "BOTTOM":
                    if "봇" in favorableLanes:
                        strategy.append("라인 주도권을 갖고 있군요. 봇을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
                    else:
                        strategy.append("라인전이 다소 불리하게 흘러가고 있군요. 바텀 라인전 주도권을 뺏기지 않도록 노력하세요. 라인 주도권을 뺏을 수 있다면 봇을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
        elif tf == "total_dragons":
            if not dragon:
                numFavorableLanes = len(favorableLanes)
                numUnfavorableLanes = len(unfavorableLanes)
                numNTNLanes = len(nTnLanes)
                if posTypes.index(mypos) < 5: # 위쪽 동선
                    strategy.append("당신의 위치는 {}이군요. 용 준비를 위해 바텀의 상황을 주시하세요. 현 시점 용이 중요합니다.".format(mypos))
                else : # 미드거나 아래 동선
                    strategy.append("당신의 위치는 {}이군요. 현 시점 용이 중요합니다. 언제든지 합류할 준비를 하세요.".format(mypos))
                if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                    strategy.append("즉시 용 처치를 시도하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다.")
                elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                    strategy.append("상대가 용 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 용을 뺏어야 합니다.")
                else:
                    strategy.append("용 주변 시야를 장악하고 용싸움을 준비하세요. 기회가 된다면 용 처치를 시도해야 합니다.")
                dragon = True
        elif tf == "total_level":
            strategy.append("라인 관리와 귀환 타이밍 조절을 통해 레벨 성장을 하세요. 단순히 레벨을 높이기만 하더라도 충분히 승률에 유리합니다.")
        elif tf == "tower_shield":
            copiedFavorableLanes = favorableLanes.copy()
            copiedUnfavorableLanes = unfavorableLanes.copy()
            copiedNTNLanes = nTnLanes.copy()
            if "정글" in favorableLanes: copiedFavorableLanes.remove("정글")
            if "정글" in unfavorableLanes: copiedUnfavorableLanes.remove("정글")
            if "정글" in nTnLanes: copiedNTNLanes.remove("정글")
            if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
            if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
            if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
            numFavorableLanes = len(copiedFavorableLanes)
            numUnfavorableLanes = len(copiedUnfavorableLanes)
            numNTNLanes = len(copiedNTNLanes)
            if numFavorableLanes != 0:
                strategy.append("유리한 {} 라인을 압박하고 포탑 방패 골드를 획득하세요.".format(copiedFavorableLanes))
            else:
                strategy.append("철저한 라인 관리로 상대에게 포탑 방패 골드를 획득하지 못하도록 방해하세요.")
            strategy.append("포탑 방패 골드가 승률에 큰 영향을 줍니다.")
        elif tf == "place_wards":
            if myLane == "JUNGLE":
                strategy.append("정글을 돌며 틈틈히 상대 정글 주요 경로에 와드를 해주세요. 시야 확보를 통해 아군의 맵리딩을 돕는 것만으로도 승률에 유리합니다. 또한 해당 시야를 통해 상대 정글 동선을 파악하고 역갱 등을 준비하세요. 현 시점에서 시야를 장악하는 것이 승률에 유리합니다.")
            else:
                strategy.append("본인 라인의 갱킹/로밍 주요 경로에 와드를 하세요. 현 시점에서 갱킹/로밍을 방지하는 것만으로도 승률에 유리합니다.")
        elif tf == "kills_wards":
            if myLane == "JUNGLE":
                strategy.append("갱킹을 시도하며 시야를 제거하세요. 갱킹을 성공시켜도 좋지만 현 시점에서 시야만 제거하더라도 승률에 유리합니다. 갱킹에 실패했더라도 후에 더 좋은 기회를 만들 수 있을겁니다.")
            else:
                strategy.append("상대 라이너가 설치한 와드가 있다면 제거하도록 노력하세요. 현 시점에서 시야를 지우고 갱킹/로밍 압박을 가하는 것만으로도 승률에 상당히 유리합니다.")
        del winrate_var[twrIdx]
        del tf_b8[twrIdx]
    return strategy
        
def before14(tier, point, feedback, target_id, lane_info, target_pframes, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_b14 = TargetFeatures().tf_b14
    if team_belongs_to == 0: # blue team
        team = "blue"
        topTowerKills = list(timeline_df['blueTopTowerKills'])[point-1]
        midTowerKills = list(timeline_df['blueMidTowerKills'])[point-1]
        botTowerKills = list(timeline_df['blueBotTowerKills'])[point-1]
    else:
        team = "red"
        topTowerKills = list(timeline_df['redTopTowerKills'])[point-1]
        midTowerKills = list(timeline_df['redMidTowerKills'])[point-1]
        botTowerKills = list(timeline_df['redBotTowerKills'])[point-1]
    statistics = db.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    # 퍼블 검사
    if latestState['first_blood'] != 0: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    else: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 500
        if statistics['kills'] > 1:
            varState['first_blood'] += 1
        else:
            varState['first_blood'] += statistics['kills']
        varState['kills'] += statistics['kills']
        varState['deaths'] -= statistics['deaths']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 용 검사
    if latestState['first_dragon'] != 0: # 이미 첫 용이 먹힌 경우
        winrate_var.append(0)
    else: # 아직 첫 용이 먹히지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 25*statistics['first_dragon']
        varState['first_dragon'] += statistics['first_dragon']
        varState['total_dragons'] += statistics['first_dragon']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 포탑 검사
    if latestState['first_tower'] != 0: # 이미 첫 타워가 파괴된 경우
        winrate_var.append(0)
    else: # 아직 첫 타워가 파괴되지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 650*statistics['first_tower']
        varState['first_tower'] += statistics['first_tower']
        varState['kills_total_towers'] += statistics['first_tower']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 퍼블, 첫 용 , 첫 포탑 외 feature들 분석 시작
    for tf in tf_b14[3:]:
        varState = latestState.copy()
        if tf == "kills": # 킬
            varState['total_gold'] += 300*statistics['kills']
            if statistics['assists'] != 0: # 갱킹이나 로밍으로 인해 킬이 발생한 경우
                if team == "blue": varState['total_gold'] += 100
                else: varState['total_gold'] -= 100
            varState['kills'] += statistics['kills']
            varState['deaths'] -= statistics['deaths'] #데스는 거꾸로 더해줘야 함
            varState['assists'] += statistics['assists']
        elif tf == "kills_total_minion": # 미니언
            varState['total_gold'] += 19*statistics['kills_total_minion']
            varState['kills_total_minion'] += statistics['kills_total_minion']
        elif tf == "kills_total_jungle_minion": # 정글링
            varState['total_gold'] += 38*statistics['kills_total_jungle_minion']
            varState['kills_total_jungle_minion'] += statistics['kills_total_jungle_minion']
        elif tf == "total_dragons": # 용 처치 횟수
            varState['total_gold'] += 25*statistics['total_dragons']
            varState['total_dragons'] += statistics['total_dragons']
        elif tf == "kills_top_towers": # 탑 포탑 파괴 횟수
            if topTowerKills != 3:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf]
        elif tf == "kills_mid_towers" : # 미드 포탑 파괴 횟수
            if midTowerKills != 5:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf]
        elif tf == "kills_bot_towers" : # 바텀 포탑 파괴 횟수
            if botTowerKills != 3:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf] 
        elif tf == "rift_heralds": # 전령 처치 횟수
            varState['total_gold'] += 25*statistics['rift_heralds']
            varState[tf] += statistics[tf]
        elif tf == "total_level": # 순수 레벨(성장)
            varState['total_level'] += statistics['total_level']
            varState['avg_level'] += statistics['avg_level']
        elif tf == "tower_shield": # 라인압박. cs는 고려하지 않고 그냥 골드만 증가시켜봄
            if team == "blue": varState["total_gold"] += 200
            else: varState['total_gold'] -= 200
        elif tf == "place_wards":
            varState['place_wards'] += statistics['place_wards']
        elif tf == "kills_wards":
            varState['total_gold'] += 20*statistics['kills_wards']
            varState['kills_wards'] += statistics['kills_wards']
        # 기대승률 분석
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    kill, dragon, tower = False, False, False
    myLane = lane_info[target_id-1]
    for pframe in target_pframes[1:]:
        if pframe['participantId'] == target_id:
            mypframe = pframe
            break
    mypos = distinguish_pos(mypframe['position']['x'], mypframe['position']['y'])
    competsByLane = makeCompetsByLane(team_belongs_to, lane_info, target_pframes)
    favorableLanes, unfavorableLanes, nTnLanes = [], [], []
    for lane, value in competsByLane.items():
        if value == 1: favorableLanes.append(lane)
        elif value == -1: unfavorableLanes.append(lane)
        else: nTnLanes.append(lane)
    numFavorableLanes = len(favorableLanes)
    numUnfavorableLanes = len(unfavorableLanes)
    numNTNLanes = len(nTnLanes)
    loopCnt = 0
    while loopCnt < 2 or len(strategy) < 2: # 가장 영향 높은 feature 두개 선정
        loopCnt += 1
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b14[twrIdx]
        if tf == "first_blood":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("효율적인 정글 동선으로 공격로에 도움을 주거나 카정을 통해 선취점을 가져가도록 노력하세요.")
                    copiedFavorableLanes = favorableLanes.copy()
                    copiedUnfavorableLanes = unfavorableLanes.copy()
                    copiedNTNLanes = nTnLanes.copy()
                    if "정글" in favorableLanes: copiedFavorableLanes.remove("정글")
                    if "정글" in unfavorableLanes: copiedUnfavorableLanes.remove("정글")
                    if "정글" in nTnLanes: copiedNTNLanes.remove("정글")
                    if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                    if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                    if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                    numFavorableLanes = len(copiedFavorableLanes)
                    numUnfavorableLanes = len(copiedUnfavorableLanes)
                    numNTNLanes = len(copiedNTNLanes)
                    if numFavorableLanes == 0 and numNTNLanes < 2:
                        strategy.append("모든 라인전이 열세라 갱킹이 힘들 수 있습니다. 냉정하게 판단하여 갱킹을 시도하세요.")
                    elif numFavorableLanes != 0 and numUnfavorableLanes != 0:
                        strategy.append("{} 라인이 우세하고, {} 라인이 열세입니다. 보통 우세한 라인을 갱킹하는 것이 게임을 풀어나가기 쉽습니다.".format(copiedFavorableLanes, copiedUnfavorableLanes))
                    elif numUnfavorableLanes == 0:
                        strategy.append("모든 라인이 무난하게 라인전을 진행하고 있습니다. 기회가 되는 대로 갱킹을 시도해보세요.")
                elif myLane == "SUPPORTER":
                    copiedFavorableLanes = favorableLanes.copy()
                    copiedUnfavorableLanes = unfavorableLanes.copy()
                    copiedNTNLanes = nTnLanes.copy()
                    if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                    if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                    if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                    numFavorableLanes = len(copiedFavorableLanes)
                    numUnfavorableLanes = len(copiedUnfavorableLanes)
                    numNTNLanes = len(copiedNTNLanes)
                    strategy.append("맵 전반적 아군/적의 시야를 파악하고, 정글이 봇을 들를 경우 어느 경로로 와야 하는지 알려주세요. 원딜과 호흡을 맞추어 선취점을 가져가도록 노력하세요.")
                    if "정글" in favorableLanes:
                        strategy.append("아군 정글이 적 정글보다 우세합니다. 아군 정글이 봇 동선을 자주 이용한다면 함께 다니며 정글 시야를 장악하고 게임을 풀어가세요.")
                    if numUnfavorableLanes != 0:
                        strategy.append("{} 라인이 지고있군요. 이 타이밍에 정글과 협동하여 로밍을 시도한다면 상대가 예측하기 쉽지 않습니다. 로밍을 시도하여 게임을 풀어가보세요.".format(copiedUnfavorableLanes))
                else:
                    if myLane == "TOP": laneKey = "탑"
                    elif myLane == "MID": laneKey = "미드"
                    elif myLane == "BOTTOM": laneKey = "봇"
                    if laneKey in favorableLanes:
                        strategy.append("라인전을 이기고 있네요.")                    
                    elif laneKey in unfavorableLanes:
                        strategy.append("라인전을 지고있군요. 적 정글의 갱킹을 조심하세요. 상대방의 무리한 플레이나 포탑 다이브를 노리세요.")
                    strategy.append("cs에 집중하는 것도 좋지만 딜교환에 더 집중하고 선취점을 가져가도록 노력하세요.")
                kill = True
        elif tf == "first_dragon":
            if not dragon:
                if posTypes.index(mypos) < 5: # 위쪽 동선
                    strategy.append("당신의 위치는 {}이군요. 용 준비를 위해 바텀의 상황을 주시하세요. 현 시점 첫 용 선점이 중요합니다.".format(mypos))
                else : # 미드거나 아래 동선
                    strategy.append("당신의 위치는 {}이군요. 현 시점 첫 용 선점이 중요합니다. 언제든지 합류할 준비를 하세요.".format(mypos))
                if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                    strategy.append("즉시 용 처치를 시도하여 첫 용을 선점하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다.")
                elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                    strategy.append("상대가 용 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 용을 뺏어야 합니다.")
                else:
                    strategy.append("용 주변 시야를 장악하고 첫 용 선점을 위해 준비하세요. 기회가 된다면 용 처치를 시도해야 합니다.")
                dragon = True
        elif tf == "first_tower":
            if not tower:
                copiedFavorableLanes = favorableLanes.copy()
                copiedUnfavorableLanes = unfavorableLanes.copy()
                copiedNTNLanes = nTnLanes.copy()
                if "정글" in favorableLanes: copiedFavorableLanes.remove("정글")
                if "정글" in unfavorableLanes: copiedUnfavorableLanes.remove("정글")
                if "정글" in nTnLanes: copiedNTNLanes.remove("정글")
                if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                numFavorableLanes = len(copiedFavorableLanes)
                numUnfavorableLanes = len(copiedUnfavorableLanes)
                numNTNLanes = len(copiedNTNLanes)
                if numFavorableLanes != 0:
                    strategy.append("유리한 {} 라인에 힘을 실어주어 포탑 방패를 제거하고 첫 포탑을 파괴하세요. 현 시점에서 첫 포탑을 먼저 파괴하는 것이 승률에 유리합니다.".format(copiedFavorableLanes))
                else:
                    if myLane == "JUNGLE":
                        strategy.append("상대가 먼저 첫 포탑 파괴를 선점하지 않도록 라이너들을 도와주세요. 당장의 갱킹이나 정글링보다 첫 포탑 파괴 선점이 승률에 유리합니다.")
                    else:
                        strategy.append("라인전에 더욱 집중하여 상대가 먼저 첫 포탑 파괴를 선점하지 않도록 하고, 상대 라이너가 라인을 떠날 때를 기회삼아 첫 포탑 파괴를 선점하도록 노력하세요. 합류하는 것보다 첫 포탑 파괴 선점이 승률에 더 유리할 수 있습니다.")
                tower = True
        elif tf == "kills":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("효율적인 정글 동선으로 공격로에 도움을 주거나 카정을 통해 킬을 하도록 노력하세요.")
                    copiedFavorableLanes = favorableLanes.copy()
                    copiedUnfavorableLanes = unfavorableLanes.copy()
                    copiedNTNLanes = nTnLanes.copy()
                    if "정글" in favorableLanes: copiedFavorableLanes.remove("정글")
                    if "정글" in unfavorableLanes: copiedUnfavorableLanes.remove("정글")
                    if "정글" in nTnLanes: copiedNTNLanes.remove("정글")
                    if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                    if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                    if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                    numFavorableLanes = len(copiedFavorableLanes)
                    numUnfavorableLanes = len(copiedUnfavorableLanes)
                    numNTNLanes = len(copiedNTNLanes)
                    if numFavorableLanes == 0 and numNTNLanes < 2:
                        strategy.append("모든 라인전이 열세라 갱킹이 힘들 수 있습니다. 냉정하게 판단하여 갱킹을 시도하세요.")
                    elif numFavorableLanes != 0 and numUnfavorableLanes != 0:
                        strategy.append("{} 라인이 우세하고, {} 라인이 열세입니다. 보통 우세한 라인을 갱킹하는 것이 게임을 풀어나가기 쉽습니다.".format(copiedFavorableLanes, copiedUnfavorableLanes))
                    elif numUnfavorableLanes == 0:
                        strategy.append("모든 라인이 무난하게 라인전을 진행하고 있습니다. 기회가 되는 대로 갱킹을 시도해보세요.")
                elif myLane == "SUPPORTER":
                    copiedFavorableLanes = favorableLanes.copy()
                    copiedUnfavorableLanes = unfavorableLanes.copy()
                    copiedNTNLanes = nTnLanes.copy()
                    if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                    if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                    if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                    numFavorableLanes = len(copiedFavorableLanes)
                    numUnfavorableLanes = len(copiedUnfavorableLanes)
                    numNTNLanes = len(copiedNTNLanes)
                    strategy.append("맵 전반적 아군/적의 시야를 파악하고, 정글이 봇을 들를 경우 어느 경로로 와야 하는지 알려주세요. 원딜과 호흡을 맞추어 킬을 하도록 노력하세요.")
                    if "정글" in favorableLanes:
                        strategy.append("아군 정글이 적 정글보다 우세합니다. 아군 정글이 봇 동선을 자주 이용한다면 함께 다니며 정글 시야를 장악하고 게임을 풀어가세요.")
                    if numUnfavorableLanes != 0:
                        strategy.append("{} 라인이 지고있군요. 이 타이밍에 정글과 협동하여 로밍을 시도한다면 상대가 예측하기 쉽지 않습니다. 로밍을 시도하여 게임을 풀어가보세요.".format(unfavorableLanes))
                else:
                    if myLane == "TOP": laneKey = "탑"
                    elif myLane == "MID": laneKey = "미드"
                    elif myLane == "BOTTOM": laneKey = "봇"
                    # 정글 위치 알아내기
                    if team_belongs_to == 0: # 블루팀
                        for p_id in range(5, 10):
                            if lane_info[p_id] == "JUNGLE":
                                enemyJungleId = p_id + 1
                                break
                        try: enemyJunglePos = distinguish_pos(target_pframes[enemyJungleId]['position']['x'], target_pframes[enemyJungleId]['position']['y'])
                        except: enemyJunglePos = "미드"
                    else:
                        for p_id in range(5):
                            if lane_info[p_id] == "JUNGLE":
                                enemyJungleId = p_id + 1
                                break
                        try: enemyJunglePos = distinguish_pos(target_pframes[enemyJungleId]['position']['x'], target_pframes[enemyJungleId]['position']['y'])
                        except: enemyJunglePos = "미드"
                    if laneKey in favorableLanes:
                        strategy.append("{} 라인전을 이기고 있네요. 상대 정글 위치는 {}쪽입니다. 2:1도 거뜬하다면 과감한 딜교환을 통해 무자비한 라인 압박을 시도하세요.".format(laneKey, enemyJunglePos))
                    elif laneKey in unfavorableLanes:
                        strategy.append("{} 라인전을 지고있군요. 상대 정글 위치는 {}쪽입니다. 적 정글의 갱킹을 조심하세요. 상대방의 무리한 플레이나 포탑 다이브를 노리세요.".format(laneKey, enemyJunglePos))
                    strategy.append("다른 것들을 내주더라도 킬을 하도록 노력하세요. 현 시점에서 킬을 따내는 것이 승률에 유리합니다.")
                kill = True
        elif tf == "kills_total_minion":
            if not kill:
                if myLane == "JUNGLE":
                    strategy.append("정글링을 하는 것보다 갱을 시도하는 것이 더 좋습니다. 킬을 하지 못하더라도 상대를 귀환시켜 아군이 cs차이를 내도록 돕는 것이 승률에 유리합니다.")
                elif myLane == "SUPPORTER":
                    strategy.append("원딜이 cs를 잘 먹을 수 있도록 보조해주세요. 킬을 하는 것도 좋지만 원딜이 cs격차만 내더라도 승률에 상당히 유리합니다.")
                else:
                    strategy.append("킬 하는 것도 좋지만 딜교환을 하며 라인전 우위를 가져가고 cs격차만 내더라도 승률에 상당히 유리합니다.")
            kill = True
        elif tf == "kills_total_jungle_minion":
            if myLane == "JUNGLE":
                if not kill:
                    strategy.append("정글링 격차를 내도록 노력하세요. 아군이 적 정글에게 갱킹을 당해 라인에서 손해를 보더라도 정글링을 하는 것이 승률에 유리합니다.")
                    kill = True
            elif myLane == "SUPPORTER":
                strategy.append("맵리딩을 통해 상대 정글의 동선을 파악하세요. 아군 정글이 안전하게 정글링을 하도록 하거나 카정을 할 수 있도록 도와주세요. 정글링 격차가 승률에 유리합니다.")
            else:
                strategy.append("라인 주도권을 뺏기지 않도록 노력하세요. 주도권을 가지고 있다면 본인 라인을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 정글링 격차가 승률에 유리합니다.")
        elif tf == "total_dragons":
            if not dragon:
                dragonList = list(df[-6:]['total_dragons'])
                isDragonAlive, toWait = True, 0
                for idx in range(5):
                    if dragonList[idx] != dragonList[idx+1]:
                        isDragonAlive = False
                        toWait = idx+1
                        break
                if posTypes.index(mypos) < 5: # 위쪽 동선
                    strategy.append("당신의 위치는 {}이군요. 용 준비를 위해 바텀의 상황을 주시하세요. 현 시점 첫 용 선점이 중요합니다.".format(mypos))
                else : # 미드거나 아래 동선
                    strategy.append("당신의 위치는 {}이군요. 현 시점 첫 용 선점이 중요합니다. 언제든지 합류할 준비를 하세요.".format(mypos))  
                if isDragonAlive:
                    if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                        strategy.append("즉시 용 처치를 시도하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다.")
                    elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                        strategy.append("상대가 용 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 용을 뺏어야 합니다.")
                    else:
                        strategy.append("용 주변 시야를 장악하고 용싸움을 준비하세요. 기회가 된다면 용 처치를 시도해야 합니다.")
                    strategy.append("용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                elif toWait < 3: # 기다려야되는 시간이 1분 미만
                    if numUnfavorableLanes > 2 and numFavorableLanes < 2:
                        strategy.append("1분 뒤 생성될 용을 위해 상대가 용 주변 시야를 장악하려 시도할 가능성이 높습니다. 전면전을 할 경우 이길 확률이 낮으니 상대의 실수를 노리며 시야 싸움을 하세요. 용 처치가 승률에 큰 영향을 줍니다. 기회가 된다면 용을 뻇어야 합니다.")
                    else:
                        strategy.append("1분 뒤 생성될 용 처치를 위해 정비하고 용 주변 시야를 확보하도록 노력하세요. 용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                elif toWait == 3:
                    if numUnfavorableLanes > 2 and numFavorableLanes < 2:
                        strategy.append("2분 뒤 생성될 용을 위해 상대가 용 주변 시야를 장악하려 시도할 가능성이 높습니다. 전면전을 할 경우 이길 확률이 낮으니 상대의 실수를 노리며 시야 싸움을 하세요. 용 처치가 승률에 큰 영향을 줍니다. 기회가 된다면 용을 뻇어야 합니다.")
                    else:
                        strategy.append("2분 뒤 생성될 용 처치를 위해 정비하고 용 주변 시야를 확보하도록 노력하세요. 용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                dragon = True
        elif tf == "kills_top_towers":
            if topTowerKills == 0:
                #if myLane == "TOP":
                if "탑" in favorableLanes:
                    strategy.append("탑 라인전 상황이 유리하네요. 상단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 기회가 되는대로 포탑을 파괴하세요. 현 시점 탑 포탑을 파괴해놓는 것이 승률에 유리합니다.")
                else:
                    strategy.append("기회가 있을 때 상단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 포탑을 파괴하려 노력하세요. 현 시점 탑 포탑을 파괴해놓는 것이 승률에 유리합니다.")
                #else:
                    #if "탑" in favorableLanes:
                        #strategy.append("탑 라인전 상황이 유리하네요. 상단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 기회가 되는대로 포탑을 파괴하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 파괴해놓는 것이 좋습니다.")
            else:
                strategy.append("상단 공격로 2, 3차 포탑을 압박하세요. 현 시점 탑 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            tower = True
        elif tf == "kills_mid_towers":
            if midTowerKills == 0:
                if "미드" in favorableLanes:
                    strategy.append("미드 라인전 상황이 유리하네요. 중단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 기회가 되는대로 포탑을 파괴하세요. 현 시점 미드 포탑을 파괴해놓는 것이 승률에 유리합니다.")
                else:
                    strategy.append("기회가 있을 때 중단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 포탑을 파괴하려 노력하세요. 현 시점 미드 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            else:
                strategy.append("중단 공격로 2, 3차 포탑을 압박하세요. 현 시점 미드 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            tower = True
        elif tf == "kills_bot_towers":
            if botTowerKills == 0:
                if "봇" in favorableLanes:
                    strategy.append("봇 라인전 상황이 유리하네요. 하단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 기회가 되는대로 포탑을 파괴하세요. 현 시점 바텀 포탑을 파괴해놓는 것이 승률에 유리합니다.")
                else:
                    strategy.append("기회가 있을 때 하단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 포탑을 파괴하려 노력하세요. 현 시점 바텀 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            else:
                strategy.append("하단 공격로 2, 3차 포탑을 압박하세요. 현 시점 바텀 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            tower = True
        elif tf == "rift_heralds":
            if len(favorableLanes) < 2:
                strategy.append("다른 곳에서 손해를 보더라도 전령을 처치하는 것이 승률에 더 유리할 수 있습니다.")
            else:
                strategy.append("기회가 된다면 전령 처치를 시도하세요. 전령을 처치하는 것이 승률에 유리합니다.")
        elif tf == "total_level":
            strategy.append("라인 관리와 귀환 타이밍 조절을 통해 레벨 성장을 하세요. 단순히 레벨을 높이기만 하더라도 충분히 승률에 유리합니다.")
        elif tf == "tower_shield":
            if not tower:
                strategy.append("기회가 되는대로 어떤 공격로든 압박을 시도하고 포탑 방패 골드를 획득하세요. 포탑 방패 골드를 얻는 것이 승률에 크게 기여할 수 있습니다.")
                tower = True
        elif tf == "place_wards":
            if myLane == "JUNGLE":
                strategy.append("정글을 돌며 틈틈히 상대 정글 주요 경로에 와드를 해주세요. 시야 확보를 통해 아군의 맵리딩을 돕는 것만으로도 승률에 유리합니다.")
            else:
                strategy.append("본인 라인의 갱킹/로밍 주요 경로에 와드를 하세요. 현 시점에서 갱킹/로밍을 방지하는 것만으로도 승률에 유리합니다.")
        elif tf == "kills_wards":
            if myLane == "JUNGLE":
                strategy.append("갱킹을 시도하며 시야를 제거하세요. 갱킹을 성공시켜도 좋지만 현 시점에서 시야만 제거하더라도 승률에 유리합니다. 갱킹에 실패했더라도 후에 더 좋은 기회를 만들 수 있을겁니다.")
            else:
                strategy.append("상대 라이너가 설치한 와드가 있다면 제거하도록 노력하세요. 현 시점에서 시야를 지우고 갱킹/로밍 압박을 가하는 것만으로도 승률에 상당히 유리합니다.")
        del winrate_var[twrIdx]
        del tf_b14[twrIdx]
    return strategy

def before20(tier, point, feedback, target_id, lane_info, target_pframes, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_b20 = TargetFeatures().tf_b20
    if team_belongs_to == 0: # blue team
        team = "blue"
        topTowerKills = list(timeline_df['blueTopTowerKills'])[point-1]
        midTowerKills = list(timeline_df['blueMidTowerKills'])[point-1]
        botTowerKills = list(timeline_df['blueBotTowerKills'])[point-1]
    else:
        team = "red"
        topTowerKills = list(timeline_df['redTopTowerKills'])[point-1]
        midTowerKills = list(timeline_df['redMidTowerKills'])[point-1]
        botTowerKills = list(timeline_df['redBotTowerKills'])[point-1]
    statistics = db.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    # 퍼블 검사
    if latestState['first_blood'] != 0: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    else: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 500
        if statistics['kills'] > 1:
            varState['first_blood'] += 1
        else:
            varState['first_blood'] += statistics['kills']
        varState['kills'] += statistics['kills']
        varState['deaths'] -= statistics['deaths']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 용 검사
    if latestState['first_dragon'] != 0: # 이미 첫 용이 먹힌 경우
        winrate_var.append(0)
    else: # 아직 첫 용이 먹히지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 25*statistics['first_dragon']
        varState['first_dragon'] += statistics['first_dragon']
        varState['total_dragons'] += statistics['first_dragon']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 포탑 검사
    if latestState['first_tower'] != 0: # 이미 첫 타워가 파괴된 경우
        winrate_var.append(0)
    else: # 아직 첫 타워가 파괴되지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 650*statistics['first_tower']
        varState['first_tower'] += statistics['first_tower']
        varState['kills_total_towers'] += statistics['first_tower']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 억제기 검사
    if latestState['first_inhibitor'] != 0: # 이미 첫 억제기가 파괴된 경우
        winrate_var.append(0)
    else: # 아직 첫 억제기가 파괴되지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 25*statistics['first_tower']
        varState['first_inhibitor'] += statistics['first_inhibitor']
        varState['kills_inhibitors'] += statistics['first_inhibitor']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 퍼블, 첫 용, 첫 포탑, 첫 억제기 외 feature들 분석 시작
    for tf in tf_b20[4:]:
        varState = latestState.copy()
        if tf == "kills": # 킬
            varState['total_gold'] += 300*statistics['kills']
            if statistics['assists'] != 0: # 갱킹이나 로밍으로 인해 킬이 발생한 경우
                if team == "blue": varState['total_gold'] += 100
                else: varState['total_gold'] -= 100
            varState['kills'] += statistics['kills']
            varState['deaths'] -= statistics['deaths'] #데스는 거꾸로 더해줘야 함
            varState['assists'] += statistics['assists']
        elif tf == "kills_total_minion": # 미니언
            varState['total_gold'] += 20*statistics['kills_total_minion']
            varState['kills_total_minion'] += statistics['kills_total_minion']
        elif tf == "kills_total_jungle_minion": # 정글링
            varState['total_gold'] += 40*statistics['kills_total_jungle_minion']
            varState['kills_total_jungle_minion'] += statistics['kills_total_jungle_minion']
        elif tf == "total_dragons": # 용 처치 횟수
            varState['total_gold'] += 25*statistics['total_dragons']
            varState['total_dragons'] += statistics['total_dragons']
        elif tf == "kills_top_towers": # 탑 포탑 파괴 횟수
            if topTowerKills != 3:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf]
        elif tf == "kills_mid_towers" : # 미드 포탑 파괴 횟수
            if midTowerKills != 5:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf]
        elif tf == "kills_bot_towers" : # 바텀 포탑 파괴 횟수
            if botTowerKills != 3:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf] 
        elif tf == "kills_inhibitors": # 억제기 파괴 횟수
            if topTowerKills > 1 or midTowerKills > 1 or botTowerKills > 1:
                varState['total_gold'] += 25*statistics['kills_inhibitors']
                varState['kills_inhibitors'] += statistics['kills_inhibitors']
        elif tf == "rift_heralds": # 전령 처치 횟수
            varState['total_gold'] += 25*statistics['rift_heralds']
            varState[tf] += statistics[tf]
        elif tf == "total_level": # 순수 레벨(성장)
            varState['total_level'] += statistics['total_level']
            varState['avg_level'] += statistics['avg_level']
        elif tf == "place_wards": # 와드 설치 횟수
            varState['place_wards'] += statistics['place_wards']
        elif tf == "kills_wards": # 와드 파괴 횟수
            varState['total_gold'] += 20*statistics['kills_wards']
            varState['kills_wards'] += statistics['kills_wards']
        # 기대승률 분석
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    kill, dragon, tower, inhibitor = False, False, False, False
    myLane = lane_info[target_id-1]
    for pframe in target_pframes[1:]:
        if pframe['participantId'] == target_id:
            mypframe = pframe
            break
    mypos = distinguish_pos(mypframe['position']['x'], mypframe['position']['y'])
    competsByLane = makeCompetsByLane(team_belongs_to, lane_info, target_pframes)
    favorableLanes, unfavorableLanes, nTnLanes = [], [], []
    for lane, value in competsByLane.items():
        if value == 1: favorableLanes.append(lane)
        elif value == -1: unfavorableLanes.append(lane)
        else: nTnLanes.append(lane)
    numFavorableLanes = len(favorableLanes)
    numUnfavorableLanes = len(unfavorableLanes)
    numNTNLanes = len(nTnLanes)
    loopCnt = 0
    while loopCnt < 2 or len(strategy) < 2: # 가장 영향 높은 feature 두개 선정
        loopCnt += 1
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b20[twrIdx]
        if tf == "first_blood":
            if not kill:
                strategy.append("선취점")
                kill = True
        elif tf == "first_dragon":
            if not dragon:
                if posTypes.index(mypos) < 5: # 위쪽 동선
                    strategy.append("당신의 위치는 {}이군요. 용 준비를 위해 바텀의 상황을 주시하세요. 현 시점 첫 용 선점이 중요합니다.".format(mypos))
                else : # 미드거나 아래 동선
                    strategy.append("당신의 위치는 {}이군요. 현 시점 첫 용 선점이 중요합니다. 언제든지 합류할 준비를 하세요.".format(mypos))
                if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                    strategy.append("즉시 용 처치를 시도하여 첫 용을 선점하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다.")
                elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                    strategy.append("상대가 용 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 용을 뺏어야 합니다.")
                else:
                    strategy.append("용 주변 시야를 장악하고 첫 용 선점을 위해 준비하세요. 기회가 된다면 용 처치를 시도해야 합니다.")
                dragon = True
        elif tf == "first_tower":
            if not tower:
                copiedFavorableLanes = favorableLanes.copy()
                copiedUnfavorableLanes = unfavorableLanes.copy()
                copiedNTNLanes = nTnLanes.copy()
                if "정글" in favorableLanes: copiedFavorableLanes.remove("정글")
                if "정글" in unfavorableLanes: copiedUnfavorableLanes.remove("정글")
                if "정글" in nTnLanes: copiedNTNLanes.remove("정글")
                if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                numFavorableLanes = len(copiedFavorableLanes)
                numUnfavorableLanes = len(copiedUnfavorableLanes)
                numNTNLanes = len(copiedNTNLanes)
                if numFavorableLanes != 0:
                    strategy.append("유리한 {} 라인에 힘을 실어주어 포탑 방패를 제거하고 첫 포탑을 파괴하세요. 현 시점에서 첫 포탑을 먼저 파괴하는 것이 승률에 유리합니다.".format(copiedFavorableLanes))
                else:
                    if myLane == "JUNGLE":
                        strategy.append("상대가 먼저 첫 포탑 파괴를 선점하지 않도록 라이너들을 도와주세요. 당장의 갱킹이나 정글링보다 첫 포탑 파괴 선점이 승률에 유리합니다.")
                    else:
                        strategy.append("라인 관리를 해서 상대가 먼저 첫 포탑 파괴를 선점하지 않도록 하고, 다른 라인의 우위를 가늠하여 로밍을 시도해보세요. 첫 포탑을 먼저 파괴하는 것이 승률에 유리합니다.")
                tower = True
        elif tf == "first_inhibitor":
            if not inhibitor:
                targetInhibitors = []
                if topTowerKills > 1: targetInhibitors.append("탑")
                if midTowerKills > 1: targetInhibitors.append("미드")
                if botTowerKills > 1: targetInhibitors.append("봇")
                if len(targetInhibitors) != 0:
                    targetInhibitors = str(targetInhibitors).replace(", ", " or ")
                    targetInhibitors = targetInhibitors.replace("'", "")
                    strategy.append("첫 억제기 파괴, 대상:{}".format(targetInhibitors))
                    inhibitor = True
        elif tf == "kills":
            if not kill:
                if numFavorableLanes > 2 and numUnfavorableLanes < 2:
                    strategy.append("소규모 전투 혹은 한타를 적극적으로 시도하고 킬을 가져가도록 노력하세요. 충분히 유리하기 때문에 전투가 유리하게 진행될 가능성이 높습니다.")
                elif numUnfavorableLanes > 2:
                    strategy.append("전반적으로 지고있어 소규모 전투 혹은 한타에서 유리하게 전투를 진행할 가능성이 낮지만, 상대방의 실수를 노려 최대한 이득을 보려 노력하세요. 현재 상태를 유지할 수만 있어도 승률에 유리합니다.")
                else:
                    strategy.append("소규모 전투 혹은 한타를 시도하고 킬을 가져가도록 노력하세요. 현 시점에서 다른 것들을 내주더라도 킬을 따내는 것이 승률에 유리합니다.")
                kill = True
        elif tf == "kills_total_minion":
            strategy.append("라인 관리를 통해 cs 격차를 내도록 노력하세요. 현 시점에서 cs만 잘 관리해도 승률에 유리합니다.")
        elif tf == "kills_total_jungle_minion":
            if myLane == "JUNGLE":
                if not kill:
                    strategy.append("정글링 격차를 내도록 노력하세요. 아군이 적 정글에게 갱킹을 당해 라인에서 손해를 보더라도 정글링을 하는 것이 승률에 유리합니다.")
                    kill = True
            elif myLane == "SUPPORTER":
                strategy.append("맵리딩을 통해 상대 정글의 동선을 파악하세요. 아군 정글이 안전하게 정글링을 하도록 하거나 카정을 할 수 있도록 도와주세요. 정글링 격차가 승률에 유리합니다.")
            else:
                strategy.append("라인 주도권을 뺏기지 않도록 노력하세요. 주도권을 가지고 있다면 본인 라인을 통해 아군 정글의 동선을 유도하고 적극적인 카정을 시도하도록 오더하세요. 기회가 된다면 적 정글에 들어가 직접 카정을 시도하세요. 정글링 격차가 승률에 유리합니다.")
        elif tf == "total_dragons":
            if not dragon:
                dragonList = list(df[-6:]['total_dragons'])
                isDragonAlive, toWait = True, 0
                for idx in range(5):
                    if dragonList[idx] != dragonList[idx+1]:
                        isDragonAlive = False
                        toWait = idx+1
                        break
                    
                if isDragonAlive:
                    if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                        strategy.append("즉시 용 처치를 시도하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다.")
                    elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                        strategy.append("상대가 용 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 용을 뺏어야 합니다.")
                    else:
                        strategy.append("용 주변 시야를 장악하고 용싸움을 준비하세요. 기회가 된다면 용 처치를 시도해야 합니다.")
                    strategy.append("용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                elif toWait < 3: # 기다려야되는 시간이 1분 미만
                    if numUnfavorableLanes > 2 and numFavorableLanes < 2:
                        strategy.append("1분 뒤 생성될 용을 위해 상대가 용 주변 시야를 장악하려 시도할 가능성이 높습니다. 전면전을 할 경우 이길 확률이 낮으니 상대의 실수를 노리며 시야 싸움을 하세요. 용 처치가 승률에 큰 영향을 줍니다. 기회가 된다면 용을 뻇어야 합니다.")
                    else:
                        strategy.append("1분 뒤 생성될 용 처치를 위해 정비하고 용 주변 시야를 확보하도록 노력하세요. 용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                elif toWait == 3:
                    if numUnfavorableLanes > 2 and numFavorableLanes < 2:
                        strategy.append("2분 뒤 생성될 용을 위해 상대가 용 주변 시야를 장악하려 시도할 가능성이 높습니다. 전면전을 할 경우 이길 확률이 낮으니 상대의 실수를 노리며 시야 싸움을 하세요. 용 처치가 승률에 큰 영향을 줍니다. 기회가 된다면 용을 뻇어야 합니다.")
                    else:
                        strategy.append("2분 뒤 생성될 용 처치를 위해 정비하고 용 주변 시야를 확보하도록 노력하세요. 용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                dragon = True
        elif tf == "kills_top_towers":
            if topTowerKills == 0:
                #if myLane == "TOP":
                if "탑" in favorableLanes:
                    strategy.append("탑 라인전 상황이 유리하네요. 상단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 기회가 되는대로 포탑을 파괴하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 탑 포탑을 파괴해놓는 것이 좋습니다.")
                else:
                    strategy.append("기회가 있을 때 상단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 포탑을 파괴하려 노력하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 탑 포탑을 파괴해놓는 것이 좋습니다.")
                #else:
                    #if "탑" in favorableLanes:
                        #strategy.append("탑 라인전 상황이 유리하네요. 상단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 기회가 되는대로 포탑을 파괴하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 파괴해놓는 것이 좋습니다.")
            else:
                strategy.append("상단 공격로 2, 3차 포탑을 압박하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 탑 포탑을 파괴해놓는 것이 좋습니다.")
            tower = True
        elif tf == "kills_mid_towers":
            if midTowerKills == 0:
                if "미드" in favorableLanes:
                    strategy.append("미드 라인전 상황이 유리하네요. 중단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 기회가 되는대로 포탑을 파괴하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 미드 포탑을 파괴해놓는 것이 좋습니다.")
                else:
                    strategy.append("기회가 있을 때 중단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 포탑을 파괴하려 노력하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 미드 포탑을 파괴해놓는 것이 좋습니다.")
            else:
                strategy.append("중단 공격로 2, 3차 포탑을 압박하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 미드 포탑을 파괴해놓는 것이 좋습니다.")
            tower = True
        elif tf == "kills_bot_towers":
            if botTowerKills == 0:
                if "봇" in favorableLanes:
                    strategy.append("봇 라인전 상황이 유리하네요. 하단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 기회가 되는대로 포탑을 파괴하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 바텀 포탑을 파괴해놓는 것이 좋습니다.")
                else:
                    strategy.append("기회가 있을 때 하단 공격로를 압박하고 포탑 방패 골드를 획득하세요. 포탑을 파괴하려 노력하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 바텀 포탑을 파괴해놓는 것이 좋습니다.")
            else:
                strategy.append("하단 공격로 2, 3차 포탑을 압박하세요. 때론 합류보다 포탑을 파괴하는 것이 승률에 유리합니다. 현 시점에서 바텀 포탑을 파괴해놓는 것이 좋습니다.")
            tower = True
        elif tf == "kills_inhibitors":
            if not inhibitor:
                targetInhibitors = []
                if topTowerKills > 1: targetInhibitors.append("탑")
                if midTowerKills > 1: targetInhibitors.append("미드")
                if botTowerKills > 1: targetInhibitors.append("봇")
                targetInhibitors = str(targetInhibitors).replace(", ", " or ")
                targetInhibitors = targetInhibitors.replace("'", "")
                strategy.append("{} 억제기 파괴".format(targetInhibitors))
                inhibitor = True
        elif tf == "rift_heralds":
            if len(favorableLanes) < 2:
                strategy.append("다른 곳에서 손해를 보더라도 전령을 처치하는 것이 승률에 더 유리할 수 있습니다.")
            else:
                strategy.append("기회가 된다면 전령 처치를 시도하세요. 전령을 처치하는 것이 승률에 유리합니다.")
        elif tf == "total_level":
            strategy.append("라인 관리와 귀환 타이밍 조절을 통해 레벨 성장을 하세요. 단순히 레벨을 높이기만 하더라도 충분히 승률에 유리합니다.")
        elif tf == "place_wards":
            if myLane == "JUNGLE":
                strategy.append("정글을 돌며 틈틈히 상대 정글 주요 경로에 와드를 해주세요. 시야 확보를 통해 아군의 맵리딩을 돕는 것만으로도 승률에 유리합니다.")
            else:
                strategy.append("본인 라인의 갱킹/로밍 주요 경로에 와드를 하세요. 현 시점에서 갱킹/로밍을 방지하는 것만으로도 승률에 유리합니다.")
        elif tf == "kills_wards":
            if myLane == "JUNGLE":
                strategy.append("갱킹을 시도하며 시야를 제거하세요. 갱킹을 성공시켜도 좋지만 현 시점에서 시야만 제거하더라도 승률에 유리합니다. 갱킹에 실패했더라도 후에 더 좋은 기회를 만들 수 있을겁니다.")
            else:
                strategy.append("상대 라이너가 설치한 와드가 있다면 제거하도록 노력하세요. 현 시점에서 시야를 지우고 갱킹/로밍 압박을 가하는 것만으로도 승률에 상당히 유리합니다.")
        del winrate_var[twrIdx]
        del tf_b20[twrIdx]
    return strategy

def after20(tier, point, feedback, target_id, lane_info, target_pframes, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_after = TargetFeatures().tf_after
    if team_belongs_to == 0: # blue team
        team = "blue"
        topTowerKills = list(timeline_df['blueTopTowerKills'])[point-1]
        midTowerKills = list(timeline_df['blueMidTowerKills'])[point-1]
        botTowerKills = list(timeline_df['blueBotTowerKills'])[point-1]
    else:
        team = "red"
        topTowerKills = list(timeline_df['redTopTowerKills'])[point-1]
        midTowerKills = list(timeline_df['redMidTowerKills'])[point-1]
        botTowerKills = list(timeline_df['redBotTowerKills'])[point-1]
    statistics = db.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    # 퍼블 검사
    if latestState['first_blood'] != 0: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    else: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 500
        if statistics['kills'] > 1:
            varState['first_blood'] += 1
        else:
            varState['first_blood'] += statistics['kills']
        varState['kills'] += statistics['kills']
        varState['deaths'] -= statistics['deaths']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 용 검사
    if latestState['first_dragon'] != 0: # 이미 첫 용이 먹힌 경우
        winrate_var.append(0)
    else: # 아직 첫 용이 먹히지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 25*statistics['first_dragon']
        varState['first_dragon'] += statistics['first_dragon']
        varState['total_dragons'] += statistics['first_dragon']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 포탑 검사
    if latestState['first_tower'] != 0: # 이미 첫 타워가 파괴된 경우
        winrate_var.append(0)
    else: # 아직 첫 타워가 파괴되지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 650*statistics['first_tower']
        varState['first_tower'] += statistics['first_tower']
        varState['kills_total_towers'] += statistics['first_tower']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 억제기 검사
    if latestState['first_inhibitor'] != 0: # 이미 첫 억제기가 파괴된 경우
        winrate_var.append(0)
    else: # 아직 첫 억제기가 파괴되지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 25*statistics['first_tower']
        varState['first_inhibitor'] += statistics['first_inhibitor']
        varState['kills_inhibitors'] += statistics['first_inhibitor']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 첫 바론 검사
    if latestState['first_baron'] != 0: # 이미 첫 바론이 먹힌 경우
        winrate_var.append(0)
    else: # 아직 첫 바론이 먹히지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 1500*statistics['first_baron']
        varState['first_baron'] += statistics['first_baron']
        varState['total_barons'] += statistics['first_baron']
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    # 퍼블, 첫 용, 첫 포탑, 첫 억제기, 첫 바론 외 feature들 분석 시작
    for tf in tf_after[5:]:
        varState = latestState.copy()
        if tf == "kills": # 킬
            varState['total_gold'] += 300*statistics['kills']
            if statistics['assists'] != 0: # 갱킹이나 로밍으로 인해 킬이 발생한 경우
                if team == "blue": varState['total_gold'] += 100
                else: varState['total_gold'] -= 100
            varState['kills'] += statistics['kills']
            varState['deaths'] -= statistics['deaths'] #데스는 거꾸로 더해줘야 함
            varState['assists'] += statistics['assists']
        elif tf == "kills_total_minion": # 미니언
            varState['total_gold'] += 20*statistics['kills_total_minion']
            varState['kills_total_minion'] += statistics['kills_total_minion']
        elif tf == "kills_total_jungle_minion": # 정글링
            varState['total_gold'] += 40*statistics['kills_total_jungle_minion']
            varState['kills_total_jungle_minion'] += statistics['kills_total_jungle_minion']
        elif tf == "total_dragons": # 용 처치 횟수
            varState['total_gold'] += 25*statistics['total_dragons']
            varState['total_dragons'] += statistics['total_dragons']
        elif tf == "kills_top_towers": # 탑 포탑 파괴 횟수
            if topTowerKills != 3:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf]
        elif tf == "kills_mid_towers" : # 미드 포탑 파괴 횟수
            if midTowerKills != 5:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf]
        elif tf == "kills_bot_towers" : # 바텀 포탑 파괴 횟수
            if botTowerKills != 3:
                varState['total_gold'] += 450*statistics[tf]
                varState['kills_total_towers'] += statistics[tf]
                varState[tf] += statistics[tf] 
        elif tf == "kills_inhibitors": # 억제기 파괴 횟수
            if topTowerKills > 1 or midTowerKills > 1 or botTowerKills > 1:
                varState['total_gold'] += 25*statistics['kills_inhibitors']
                varState['kills_inhibitors'] += statistics['kills_inhibitors']
        elif tf == "total_barons": # 바론 처치 횟수
            varState['total_gold'] += 1500*statistics['total_barons']
            varState['total_barons'] += statistics['total_barons']
        elif tf == "total_level": # 순수 레벨(성장)
            varState['total_level'] += statistics['total_level']
            varState['avg_level'] += statistics['avg_level']
        elif tf == "place_wards": # 와드 설치 횟수
            varState['place_wards'] += statistics['place_wards']
        elif tf == "kills_wards": # 와드 파괴 횟수
            varState['total_gold'] += 20*statistics['kills_wards']
            varState['kills_wards'] += statistics['kills_wards']
        # 기대승률 분석
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    kill, dragon, tower, inhibitor, baron = False, False, False, False, False
    myLane = lane_info[target_id-1]
    for pframe in target_pframes[1:]:
        if pframe['participantId'] == target_id:
            mypframe = pframe
            break
    mypos = distinguish_pos(mypframe['position']['x'], mypframe['position']['y'])
    competsByLane = makeCompetsByLane(team_belongs_to, lane_info, target_pframes)
    favorableLanes, unfavorableLanes, nTnLanes = [], [], []
    for lane, value in competsByLane.items():
        if value == 1: favorableLanes.append(lane)
        elif value == -1: unfavorableLanes.append(lane)
        else: nTnLanes.append(lane)
    numFavorableLanes = len(favorableLanes)
    numUnfavorableLanes = len(unfavorableLanes)
    numNTNLanes = len(nTnLanes)
    loopCnt = 0
    while loopCnt < 2 or len(strategy) < 2: # 가장 영향 높은 feature 두개 선정
        loopCnt += 1
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_after[twrIdx]
        if tf == "first_blood":
            if not kill:
                strategy.append("선취점이 아직 안나왔군요. 선취점을 가져가도록 노력해보세요.")
                kill = True
        elif tf == "first_dragon":
            if not dragon:
                if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                    strategy.append("즉시 용 처치를 시도하여 첫 용을 선점하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다. 첫 용 선점이 승률에 큰 영향을 줍니다.")
                elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                    strategy.append("상대가 용 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 용을 뺏어야 합니다. 첫 용 선점이 승률에 큰 영향을 줍니다.")
                else:
                    strategy.append("용 주변 시야를 장악하고 첫 용 선점을 위해 준비하세요. 기회가 된다면 용 처치를 시도해야 합니다. 첫 용 선점이 승률에 큰 영향을 줍니다.")
                dragon = True
        elif tf == "first_tower":
            if not tower:
                copiedFavorableLanes = favorableLanes.copy()
                copiedUnfavorableLanes = unfavorableLanes.copy()
                copiedNTNLanes = nTnLanes.copy()
                if "정글" in favorableLanes: copiedFavorableLanes.remove("정글")
                if "정글" in unfavorableLanes: copiedUnfavorableLanes.remove("정글")
                if "정글" in nTnLanes: copiedNTNLanes.remove("정글")
                if "서폿" in favorableLanes: copiedFavorableLanes.remove("서폿")
                if "서폿" in unfavorableLanes: copiedUnfavorableLanes.remove("서폿")
                if "서폿" in nTnLanes: copiedNTNLanes.remove("서폿")
                numFavorableLanes = len(copiedFavorableLanes)
                numUnfavorableLanes = len(copiedUnfavorableLanes)
                numNTNLanes = len(copiedNTNLanes)
                if numFavorableLanes != 0:
                    strategy.append("유리한 {} 라인에 힘을 실어주어 포탑 방패를 제거하고 첫 포탑을 파괴하세요. 현 시점에서 첫 포탑을 먼저 파괴하는 것이 승률에 유리합니다.".format(copiedFavorableLanes))
                else:
                    if myLane == "JUNGLE":
                        strategy.append("상대가 먼저 첫 포탑 파괴를 선점하지 않도록 라이너들을 도와주세요. 당장의 갱킹이나 정글링보다 첫 포탑 파괴 선점이 승률에 유리합니다.")
                    else:
                        strategy.append("라인 관리를 해서 상대가 먼저 첫 포탑 파괴를 선점하지 않도록 하고, 다른 라인의 우위를 가늠하여 로밍을 시도해보세요. 첫 포탑을 먼저 파괴하는 것이 승률에 유리합니다.")
                tower = True
        elif tf == "first_inhibitor":
            if not inhibitor:
                targetInhibitors = []
                if topTowerKills > 1: targetInhibitors.append("탑")
                if midTowerKills > 1: targetInhibitors.append("미드")
                if botTowerKills > 1: targetInhibitors.append("봇")
                if len(targetInhibitors) != 0:
                    targetInhibitors = str(targetInhibitors).replace(", ", " or ")
                    targetInhibitors = targetInhibitors.replace("'", "")
                    strategy.append("첫 억제기 파괴, 대상:{}".format(targetInhibitors))
                    inhibitor = True
        elif tf == "first_baron":
            if not baron:
                if numFavorableLanes > 2 and numUnfavorableLanes < 2:
                    strategy.append("팀이 충분히 유리할 때 첫 바론을 선점하도록 노력하세요. 첫 번째 바론을 선점하는 것이 승률에 매우 유리합니다.")
                else:
                    strategy.append("첫 바론을 선점하도록 노력하세요. 상황이 여의치 않다면 주변 시야를 확보하고 적에게 첫 바론을 주지 않도록 노력하세요. 첫 번째 바론을 선점하는 것이 승률에 매우 유리합니다.")
                baron = True
        elif tf == "kills":
            if not kill:
                if numFavorableLanes > 2 and numUnfavorableLanes < 2:
                    strategy.append("팀이 유리할 때 스플릿 공격을 시도하거나 한타에 승리하여 킬을 따내도록 노력하세요. 전투가 유리하게 진행될 가능성이 높습니다.  다른 것들을 내주더라도 킬을 따내는 것이 승률에 유리합니다.")
                elif numUnfavorableLanes > 2:
                    strategy.append("상대가 스플릿 공격이나 한타를 시도할 가능성이 높습니다. 팀이 불리해서 전투가 불리하게 진행될 가능성이 높지만, 상대의 실수를 노려 최대한 이득을 보려 노력하세요. 현 시점 킬을 교환하는 것만으로도 승률에 유리합니다.")
                else:
                    strategy.append("스플릿 공격이나 한타를 시도하여 킬을 따내도록 노력해보세요. 다른 것들을 내주더라도 킬을 따내는 것이 승률에 유리합니다.")
                kill = True
        elif tf == "kills_total_minion":
            strategy.append("맵리딩을 통해 라인관리를 철저히 하세요. 주 캐리 포지션의 cs 우위를 점하도록 노력해보세요. 현 시점에서 단순히 라인 관리만 하더라도 승률에 유리합니다.")
        elif tf == "kills_total_jungle_minion":
            strategy.append("맵리딩을 통해 정글관리를 철저히 하세요. 현 시점에서 단순히 정글관리만 하더라도 승률에 유리합니다.")
        elif tf == "total_dragons":
            if not dragon:
                dragonList = list(df[-6:]['total_dragons'])
                isDragonAlive, toWait = True, 0
                for idx in range(5):
                    if dragonList[idx] != dragonList[idx+1]:
                        isDragonAlive = False
                        toWait = idx+1
                        break
                    
                if isDragonAlive:
                    if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                        strategy.append("즉시 용 처치를 시도하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다.")
                    elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                        strategy.append("상대가 용 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 용을 뺏어야 합니다.")
                    else:
                        strategy.append("용 주변 시야를 장악하고 용싸움을 준비하세요. 기회가 된다면 용 처치를 시도해야 합니다.")
                    strategy.append("용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                elif toWait < 3: # 기다려야되는 시간이 1분 미만
                    if numUnfavorableLanes > 2 and numFavorableLanes < 2:
                        strategy.append("1분 뒤 생성될 용을 위해 상대가 용 주변 시야를 장악하려 시도할 가능성이 높습니다. 전면전을 할 경우 이길 확률이 낮으니 상대의 실수를 노리며 시야 싸움을 하세요. 용 처치가 승률에 큰 영향을 줍니다. 기회가 된다면 용을 뻇어야 합니다.")
                    else:
                        strategy.append("1분 뒤 생성될 용 처치를 위해 정비하고 용 주변 시야를 확보하도록 노력하세요. 용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                elif toWait == 3:
                    if numUnfavorableLanes > 2 and numFavorableLanes < 2:
                        strategy.append("2분 뒤 생성될 용을 위해 상대가 용 주변 시야를 장악하려 시도할 가능성이 높습니다. 전면전을 할 경우 이길 확률이 낮으니 상대의 실수를 노리며 시야 싸움을 하세요. 용 처치가 승률에 큰 영향을 줍니다. 기회가 된다면 용을 뻇어야 합니다.")
                    else:
                        strategy.append("2분 뒤 생성될 용 처치를 위해 정비하고 용 주변 시야를 확보하도록 노력하세요. 용을 처치하는 것이 승률에 큰 영향을 줍니다.")
                dragon = True
        elif tf == "kills_top_towers":
            if topTowerKills == 0:
                strategy.append("상단 공격로 1차 포탑을 파괴하도록 노력하세요. 탑 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            else:
                strategy.append("상단 공격로 2, 3차 포탑을 파괴하도록 노력하세요. 탑 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            tower = True
        elif tf == "kills_mid_towers":
            if midTowerKills == 0:
                strategy.append("중단 공격로 1차 포탑을 파괴하도록 노력하세요. 미드 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            elif midTowerKills == 1 or midTowerKills == 2:
                strategy.append("중단 공격로 2, 3차 포탑을 파괴하도록 노력하세요. 미드 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            else:
                strategy.append("넥서스 포탑을 파괴하도록 노력하세요.")
            tower = True
        elif tf == "kills_bot_towers":
            if botTowerKills == 0:
                strategy.append("하단 공격로 1차 포탑을 파괴하도록 노력하세요. 바텀 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            else:
                strategy.append("하단 공격로 2, 3차 포탑을 파괴하도록 노력하세요. 바텀 포탑을 파괴해놓는 것이 승률에 유리합니다.")
            tower = True
        elif tf == "kills_inhibitors":
            if not inhibitor:
                targetInhibitors = []
                if topTowerKills > 1: targetInhibitors.append("탑")
                if midTowerKills > 1: targetInhibitors.append("미드")
                if botTowerKills > 1: targetInhibitors.append("봇")
                targetInhibitors = str(targetInhibitors).replace(", ", " or ")
                targetInhibitors = targetInhibitors.replace("'", "")
                strategy.append("{} 억제기 파괴".format(targetInhibitors))
                inhibitor = True
        elif tf == "total_barons":
            if not baron:
                isBaronAlive, toWait = True, 0
                baronList = list(df[-7:]['total_barons'])
                for idx in range(6):
                    if baronList[idx] != baronList[idx+1]:
                        isBaronAlive = False
                        toWait = idx+1
                        break
                if isBaronAlive:
                    if numFavorableLanes > 2 and numUnfavorableLanes < 2: # 과반수 이상의 라인이 유리한 경우(정글, 서폿 포함)
                        strategy.append("즉시 바론 처치를 시도하세요. 상대가 싸움을 걸더라도 이길 확률이 높습니다. 현 시점 바론을 처치하는 것이 승률에 큰 영향을 줍니다.")
                    elif numUnfavorableLanes > 2 and numFavorableLanes < 2: # 과반수 이상의 라인이 불리한 경우
                        strategy.append("상대가 바론 처치를 시도하는 순간을 노려 유리한 전투를 하도록 유도하세요. 기회가 된다면 바론을 뻇어야 합니다. 현 시점 바론을 처치하는 것이 승률에 큰 영향을 줍니다.")
                    else:
                        strategy.append("바론 주변 시야를 장악하고 바론 싸움을 준비하세요. 기회가 된다면 바론 처치를 시도해야 합니다. 현 시점 바론을 처치하는 것이 승률에 큰 영향을 줍니다.")
                elif toWait < 3: # 기다려야되는 시간이 1분 미만
                    if numUnfavorableLanes > 2 and numFavorableLanes < 2:
                        strategy.append("1분 뒤 생성될 바론을 위해 상대가 바론 주변 시야를 장악하려 시도할 가능성이 높습니다. 전면전을 할 경우 이길 확률이 낮으니 상대의 실수를 노리며 시야 싸움을 하세요. 현 시점 바론 처치가 승률에 큰 영향을 줍니다. 기회가 된다면 바론을 뻇어야 합니다.")
                    else:
                        strategy.append("1분 뒤 생성될 바론 처치를 위해 정비하고 바론 주변 시야를 확보하도록 노력하세요. 현 시점 바론을 처치하는 것이 승률에 큰 영향을 줍니다.")
                elif toWait == 3:
                    if numUnfavorableLanes > 2 and numFavorableLanes < 2:
                        strategy.append("2분 뒤 생성될 바론을 위해 상대가 바론 주변 시야를 장악하려 시도할 가능성이 높습니다. 전면전을 할 경우 이길 확률이 낮으니 상대의 실수를 노리며 시야 싸움을 하세요. 현 시점 바론 처치가 승률에 큰 영향을 줍니다. 기회가 된다면 바론을 뻇어야 합니다.")
                    else:
                        strategy.append("2분 뒤 생성될 바론 처치를 위해 정비하고 바론 주변 시야를 확보하도록 노력하세요. 현 시점 바론을 처치하는 것이 승률에 큰 영향을 줍니다.")
                baron = True
        elif tf == "total_level":
            if numFavorableLanes > 2 and numUnfavorableLanes < 2:
                strategy.append("라인과 정글을 관리하며 레벨업에 힘쓰세요. 현 시점 단순히 레벨 격차를 벌리는 것만으로도 승률에 유리합니다.")
            elif numUnfavorableLanes > 2:
                strategy.append("라인과 정글을 관리하며 레벨업에 힘쓰세요. 현 시점 단순히 레벨 격차를 따라잡는 것만으로도 승률에 유리합니다.")
            else:
                strategy.append("라인과 정글을 관리하며 레벨업에 힘쓰세요. 현 시점 단순히 레벨을 올리는 것만으로도 승률에 유리합니다.")
        elif tf == "place_wards":
            strategy.append("맵 내 시야를 확보하고 상대의 동선 실수를 노리거나 전투를 유리하게 점하도록 노력해보세요. 현 시점 시야를 확보하는 것만으로도 승률에 유리합니다.")
        elif tf == "kills_wards":
            strategy.append("맵 내 적의 시야를 제거하고 상대의 동선 실수를 유도하거나 맵 내 정보력을 차단하세요. 현 시점 시야를 제거하는 것만으로도 승률에 유리합니다.")
        del winrate_var[twrIdx]
        del tf_after[twrIdx]
    return strategy
