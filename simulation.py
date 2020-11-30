import pandas as pd
import numpy as np
import processdb
from refinedata import Metadata
from sklearn.preprocessing import StandardScaler

diff_columns = Metadata().diff_columns
scaler = StandardScaler()
# target features

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

def before5(tier, point, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_b5 = TargetFeatures().tf_b5
    if team_belongs_to == 0: # blue team
        team = "blue"
    else:
        team = "red"
    statistics = processdb.bringStatistics(tier, point, team)
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
    while len(strategy) < 2: # 두 번만 반복, 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b5[twrIdx]
        if tf == "first_blood":
            if not kill:
                strategy.append("선취점")
                kill = True
        elif tf == "kills":
            if not kill:
                strategy.append("솔로킬 혹은 국지전 승리")
                kill = True
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_level":
            strategy.append("성장, 레벨링")
        elif tf == "place_wards":
            strategy.append("맵 내 시야 확보")
        elif tf == "kills_wards":
            strategy.append("적 시야 제거")
        del winrate_var[twrIdx]
        del tf_b5[twrIdx]
    return strategy

def before8(tier, point, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_b8 = TargetFeatures().tf_b8
    if team_belongs_to == 0: # blue team
        team = "blue"
    else:
        team = "red"
    statistics = processdb.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    # 퍼블 검사
    if latestState['first_blood'] != 0: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    else: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 500
        varState['first_blood'] += statistics['first_blood']
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
    while len(strategy) < 2: # 두 번만 반복, 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b8[twrIdx]
        if tf == "first_blood":
            if not kill:
                strategy.append("선취점")
                kill = True
        elif tf == "first_dragon":
            if not dragon:
                strategy.append("첫 용 선점")
                dragon = True
        elif tf == "kills":
            if not kill:
                strategy.append("솔로킬 혹은 국지전 승리")
                kill = True
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_dragons":
            if not dragon:
                strategy.append("즉시 용 처치 시도")
                dragon = True
        elif tf == "total_level":
            strategy.append("성장, 레벨링")
        elif tf == "tower_shield":
            strategy.append("아무 공격로 압박 및 포탑 방패 제거")
        elif tf == "place_wards":
            strategy.append("맵 내 시야 확보")
        elif tf == "kills_wards":
            strategy.append("적 시야 제거")
        del winrate_var[twrIdx]
        del tf_b8[twrIdx]
    return strategy
        
def before14(tier, point, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_b14 = TargetFeatures().tf_b14
    if team_belongs_to == 0: # blue team
        team = "blue"
        topTowerKills = timeline_df['blueTopTowerKills']
        midTowerKills = timeline_df['blueMidTowerKills']
        botTowerKills = timeline_df['blueBotTowerKills']
    else:
        team = "red"
        topTowerKills = timeline_df['redTopTowerKills']
        midTowerKills = timeline_df['redMidTowerKills']
        botTowerKills = timeline_df['redBotTowerKills']
    statistics = processdb.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    # 퍼블 검사
    if latestState['first_blood'] != 0: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    else: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 400*statistics['first_blood']
        varState['first_blood'] += statistics['first_blood']
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
            if midTowerKills != 3:
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
    while len(strategy) < 2: # 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b14[twrIdx]
        if tf == "first_blood":
            if not kill:
                strategy.append("선취점")
                kill = True
        elif tf == "first_dragon":
            if not dragon:
                strategy.append("첫 용 선점")
                dragon = True
        elif tf == "first_tower":
            if not tower:
                strategy.append("공격로 압박 및 포탑 방패 제거, 첫 포탑 파괴")
                tower = True
        elif tf == "kills":
            if not kill:
                strategy.append("솔로킬 혹은 국지전 승리")
                kill = True
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_dragons":
            if not dragon:
                dragonList = list(df[-5:]['total_dragons'])
                isDragonAlive, toWait = True, 0
                for idx in range(4):
                    if dragonList[idx] != dragonList[idx+1]:
                        isDragonAlive = False
                        toWait = idx+1
                        break
                if isDragonAlive:
                    strategy.append("즉시 용 처치 시도")
                elif toWait == 1: # 기다려야되는 시간이 1분 미만
                    strategy.append("1분 뒤 생성될 용 처치를 위환 정비 및 시야 확보")
                dragon = True
        elif tf == "kills_top_towers":
            if topTowerKills == 0:
                strategy.append("상단 공격로 압박 및 포탑 방패 제거, 포탑 파괴")
            else:
                strategy.append("상단 공격로 2, 3차 포탑 압박")
            tower = True
        elif tf == "kills_mid_towers":
            if midTowerKills == 0:
                strategy.append("중단 공격로 압박 및 포탑 방패 제거, 포탑 파괴")
            else:
                strategy.append("중단 공격로 2, 3차 포탑 압박")
            tower = True
        elif tf == "kills_bot_towers":
            if botTowerKills == 0:
                strategy.append("하단 공격로 압박 및 포탑 방패 제거, 포탑 파괴")
            else:
                strategy.append("하단 공격로 2, 3차 포탑 압박")
            tower = True
        elif tf == "rift_heralds":
            strategy.append("전령 처치")
        elif tf == "total_level":
            strategy.append("성장, 레벨링")
        elif tf == "tower_shield":
            if not tower:
                strategy.append("아무 공격로 압박 및 포탑 방패 제거")
                tower = True
        elif tf == "place_wards":
            strategy.append("맵 내 시야 확보")
        elif tf == "kills_wards":
            strategy.append("적 시야 제거")
        del winrate_var[twrIdx]
        del tf_b14[twrIdx]
    return strategy

def before20(tier, point, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_b20 = TargetFeatures().tf_b20
    if team_belongs_to == 0: # blue team
        team = "blue"
        topTowerKills = timeline_df['blueTopTowerKills']
        midTowerKills = timeline_df['blueMidTowerKills']
        botTowerKills = timeline_df['blueBotTowerKills']
    else:
        team = "red"
        topTowerKills = timeline_df['redTopTowerKills']
        midTowerKills = timeline_df['redMidTowerKills']
        botTowerKills = timeline_df['redBotTowerKills']
    statistics = processdb.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    # 퍼블 검사
    if latestState['first_blood'] != 0: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    else: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 500
        varState['first_blood'] += statistics['first_blood']
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
            if midTowerKills != 3:
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
    while len(strategy) < 2: # 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b20[twrIdx]
        if tf == "first_blood":
            if not kill:
                strategy.append("선취점")
                kill = True
        elif tf == "first_dragon":
            if not dragon:
                strategy.append("첫 용 선점")
                dragon = True
        elif tf == "first_tower":
            if not tower:
                strategy.append("첫 포탑 파괴")
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
                strategy.append("국지전 혹은 한타 승리")
                kill = True
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_dragons":
            if not dragon:
                dragonList = list(df[-5:]['total_dragons'])
                isDragonAlive, toWait = True, 0
                for idx in range(4):
                    if dragonList[idx] != dragonList[idx+1]:
                        isDragonAlive = False
                        toWait = idx+1
                        break
                if isDragonAlive:
                    strategy.append("즉시 용 처치 시도")
                elif toWait == 1: # 기다려야되는 시간이 1분 미만
                    strategy.append("1분 뒤 생성될 용 처치를 위환 정비 및 시야 확보")
                dragon = True
        elif tf == "kills_top_towers":
            if topTowerKills == 0:
                strategy.append("상단 공격로 1차 포탑 파괴")
            else:
                strategy.append("상단 공격로 2, 3차 포탑 파괴")
            tower = True
        elif tf == "kills_mid_towers":
            if midTowerKills == 0:
                strategy.append("중단 공격로 1차 포탑 파괴")
            else:
                strategy.append("중단 공격로 2, 3차 포탑 파괴")
            tower = True
        elif tf == "kills_bot_towers":
            if botTowerKills == 0:
                strategy.append("하단 공격로 1차 포탑 파괴")
            else:
                strategy.append("하단 공격로 2, 3차 포탑 파괴")
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
            strategy.append("전령 처치")
        elif tf == "total_level":
            strategy.append("성장, 레벨링")
        elif tf == "place_wards":
            strategy.append("맵 내 시야 확보")
        elif tf == "kills_wards":
            strategy.append("맵 내 적 시야")
        del winrate_var[twrIdx]
        del tf_b20[twrIdx]
    return strategy

def after20(tier, point, team_belongs_to, timeline_df, df, targetModel):
    strategy = [] # result to return
    tf_after = TargetFeatures().tf_after
    if team_belongs_to == 0: # blue team
        team = "blue"
        topTowerKills = timeline_df['blueTopTowerKills']
        midTowerKills = timeline_df['blueMidTowerKills']
        botTowerKills = timeline_df['blueBotTowerKills']
    else:
        team = "red"
        topTowerKills = timeline_df['redTopTowerKills']
        midTowerKills = timeline_df['redMidTowerKills']
        botTowerKills = timeline_df['redBotTowerKills']
    statistics = processdb.bringStatistics(tier, point, team)
    winrate_var = []
    latestState = df.iloc[-1] # Pandas Series
    # 퍼블 검사
    if latestState['first_blood'] != 0: # 이미 퍼블이 발생한 경우
        winrate_var.append(0)
    else: # 아직 퍼블이 발생하지 않은 경우
        varState = latestState.copy()
        varState['total_gold'] += 500
        varState['first_blood'] += statistics['first_blood']
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
            if midTowerKills != 3:
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
    while len(strategy) < 2: # 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_after[twrIdx]
        if tf == "first_blood":
            if not kill:
                strategy.append("선취점")
                kill = True
        elif tf == "first_dragon":
            if not dragon:
                strategy.append("첫 용 선점")
                dragon = True
        elif tf == "first_tower":
            if not tower:
                strategy.append("첫 포탑 파괴")
                tower = True
        elif tf == "first_inhibitor":
            if not inhibitor:
                strategy.append("첫 억제기 파괴")
                inhibitor = True
        elif tf == "first_baron":
            if not baron:
                strategy.append("첫 바론 선점")
                baron = True
        elif tf == "kills":
            if not kill:
                strategy.append("스플릿 공격로 압도 혹은 한타 승리")
                kill = True
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_dragons":
            if not dragon:
                dragonList = list(df[-5:]['total_dragons'])
                isDragonAlive, toWait = True, 0
                for idx in range(4):
                    if dragonList[idx] != dragonList[idx+1]:
                        isDragonAlive = False
                        toWait = idx+1
                        break
                if isDragonAlive:
                    strategy.append("즉시 용 처치 시도")
                elif toWait == 1: # 기다려야되는 시간이 1분 미만
                    strategy.append("1분 뒤 생성될 용 처치를 위환 정비 및 시야 확보")
                dragon = True
        elif tf == "kills_top_towers":
            if topTowerKills == 0:
                strategy.append("상단 공격로 1차 포탑 파괴")
            else:
                strategy.append("상단 공격로 2, 3차 포탑 파괴")
            tower = True
        elif tf == "kills_mid_towers":
            if midTowerKills == 0:
                strategy.append("중단 공격로 1차 포탑 파괴")
            else:
                strategy.append("중단 공격로 2, 3차 포탑 파괴")
            tower = True
        elif tf == "kills_bot_towers":
            if botTowerKills == 0:
                strategy.append("하단 공격로 1차 포탑 파괴")
            else:
                strategy.append("하단 공격로 2, 3차 포탑 파괴")
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
                baronList = list(df[-6:]['total_barons'])
                for idx in range(5):
                    if baronList[idx] != baronList[idx+1]:
                        isBaronAlive = False
                        toWait = idx+1
                        break
                if isBaronAlive:
                    strategy.append("즉시 바론 처치 시도")
                elif toWait == 1:
                    strategy.append("1분 뒤 생성될 바론 처치를 위한 정비 및 시야 확보")
                baron = True
        elif tf == "total_level":
            strategy.append("성장, 레벨링")
        elif tf == "place_wards":
            strategy.append("맵 내 시야 확보")
        elif tf == "kills_wards":
            strategy.append("적 시야 제거")
        del winrate_var[twrIdx]
        del tf_after[twrIdx]
    return strategy
