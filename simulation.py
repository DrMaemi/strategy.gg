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
            "kills", "kills_total_minion", "kills_total_jungle_minion"
        ]
        self.tf_b8 = [
            "first_blood", "first_dragon",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "total_dragons",
            "tower_shield"
        ]
        self.tf_b14 = [
            "first_blood", "first_dragon", "first_tower",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "total_dragons", "kills_total_towers", "rift_heralds",
            "total_level", "tower_shield"
        ]
        self.tf_b20 = [
            "first_blood", "first_dragon", "first_tower", "first_inhibitor",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "total_dragons", "kills_total_towers", "kills_inhibitors", "rift_heralds",
            "total_level", "place_wards", "kills_wards"
        ]
        self.tf_after = [
            "first_blood", "first_dragon", "first_tower", "first_inhibitor", "first_baron",
            "kills", "kills_total_minion", "kills_total_jungle_minion",
            "total_dragons", "kills_total_towers", "kills_inhibitors", "total_barons",
            "total_level", "place_wards", "kills_wards"
        ]

def before5(tier, point, team_belongs_to, df, targetModel):
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
        varState['first_blood'] += statistics['first_blood']
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
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    for _ in range(2): # 두 번만 반복, 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b5[twrIdx]
        if tf == "first_blood":
            strategy.append("선취점")
        elif tf == "kills":
            strategy.append("솔로킬 혹은 국지전 승리")
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        del winrate_var[twrIdx]
        del tf_b5[twrIdx]
    return strategy

def before8(tier, point, team_belongs_to, df, targetModel):
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
        elif tf == "tower_shield": # 라인압박. cs는 고려하지 않고 그냥 골드만 증가시켜봄
            if team == "blue": varState["total_gold"] += 200
            else: varState['total_gold'] -= 200
        # 기대승률 분석
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    for _ in range(2): # 두 번만 반복, 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b8[twrIdx]
        if tf == "first_blood":
            strategy.append("선취점")
        elif tf == "first_dragon":
            strategy.append("첫 용 선점")
        elif tf == "kills":
            strategy.append("솔로킬 혹은 국지전 승리")
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_dragons":
            strategy.append("용 처치")
        elif tf == "tower_shield":
            strategy.append("공격로 압박 및 포탑 방패 철거")
        del winrate_var[twrIdx]
        del tf_b8[twrIdx]
    return strategy
        
def before14(tier, point, team_belongs_to, df, targetModel):
    strategy = [] # result to return
    tf_b14 = TargetFeatures().tf_b14
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
    # 첫 타워 검사
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
    # 퍼블, 첫 용 , 첫 타워 외 feature들 분석 시작
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
        elif tf == "kills_total_towers": # 타워 파괴 횟수
            varState['total_gold'] += 450*statistics['kills_total_towers']
            varState['kills_total_towers'] += statistics['kills_total_towers']
        elif tf == "rift_heralds": # 전령 처치 횟수
            varState['total_gold'] += 25*statistics['rift_heralds']
            varState[tf] += statistics[tf]
        elif tf == "total_level": # 순수 레벨(성장)
            varState['total_level'] += statistics['total_level']
            varState['avg_level'] += statistics['avg_level']
        elif tf == "tower_shield": # 라인압박. cs는 고려하지 않고 그냥 골드만 증가시켜봄
            if team == "blue": varState["total_gold"] += 200
            else: varState['total_gold'] -= 200
        # 기대승률 분석
        simul = np.array(df.append(varState))
        simul = scaler.fit_transform(simul)
        timestamps, input_dim = simul.shape
        simul = simul.reshape(1, timestamps, input_dim)
        if team == "blue":
            winrate_var.append(targetModel.predict(simul)[0][0])
        else:
            winrate_var.append(targetModel.predict(simul)[0][1])
    for _ in range(2): # 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b14[twrIdx]
        if tf == "first_blood":
            strategy.append("선취점")
        elif tf == "first_dragon":
            strategy.append("첫 용 선점")
        elif tf == "first_tower":
            strategy.append("첫 타워 파괴")
        elif tf == "first_inhibitor":
            strategy.append("첫 억제기 파괴")
        elif tf == "kills":
            strategy.append("솔로킬 혹은 국지전 승리")
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_dragons":
            strategy.append("용 처치")
        elif tf == "kills_total_towers":
            strategy.append("타워 파괴")
        elif tf == "rift_heralds":
            strategy.append("전령 처치")
        elif tf == "kills_total_towers":
            strategy.append("타워 파괴")
        elif tf == "total_level":
            strategy.append("성장, 레벨링")
        elif tf == "tower_shield":
            strategy.append("공격로 압박 및 포탑 방패 철거")
        del winrate_var[twrIdx]
        del tf_b14[twrIdx]
    return strategy

def before20(tier, point, team_belongs_to, df, targetModel):
    strategy = [] # result to return
    tf_b20 = TargetFeatures().tf_b20
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
    # 첫 타워 검사
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
    # 퍼블, 첫 용, 첫 타워, 첫 억제기 외 feature들 분석 시작
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
        elif tf == "kills_total_towers": # 타워 파괴 횟수
            varState['total_gold'] += 450*statistics['kills_total_towers']
            varState['kills_total_towers'] += statistics['kills_total_towers']
        elif tf == "kills_inhibitors": # 억제기 파괴 횟수
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
    for _ in range(2): # 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_b20[twrIdx]
        if tf == "first_blood":
            strategy.append("선취점")
        elif tf == "first_dragon":
            strategy.append("첫 용 선점")
        elif tf == "first_tower":
            strategy.append("첫 타워 파괴")
        elif tf == "first_inhibitor":
            strategy.append("첫 억제기 파괴")
        elif tf == "kills":
            strategy.append("국지전 혹은 한타 승리")
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_dragons":
            strategy.append("용 처치")
        elif tf == "kills_total_towers":
            strategy.append("타워 파괴")
        elif tf == "kills_inhibitors":
            strategy.append("억제기 파괴")
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

def after20(tier, point, team_belongs_to, df, targetModel):
    strategy = [] # result to return
    tf_after = TargetFeatures().tf_after
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
    # 첫 타워 검사
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
    # 퍼블, 첫 용, 첫 타워, 첫 억제기, 첫 바론 외 feature들 분석 시작
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
        elif tf == "kills_total_towers": # 타워 파괴 횟수
            varState['total_gold'] += 450*statistics['kills_total_towers']
            varState['kills_total_towers'] += statistics['kills_total_towers']
        elif tf == "kills_inhibitors": # 억제기 파괴 횟수
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
    for _ in range(2): # 가장 영향 높은 feature 두개 선정
        twrIdx = winrate_var.index(max(winrate_var))
        tf = tf_after[twrIdx]
        if tf == "first_blood":
            strategy.append("선취점")
        elif tf == "first_dragon":
            strategy.append("첫 용 선점")
        elif tf == "first_tower":
            strategy.append("첫 타워 파괴")
        elif tf == "first_inhibitor":
            strategy.append("첫 억제기 파괴")
        elif tf == "first_baron":
            strategy.append("첫 바론 선점")
        elif tf == "kills":
            strategy.append("스플릿 공격로 압도 혹은 한타 승리")
        elif tf == "kills_total_minion":
            strategy.append("cs 격차")
        elif tf == "kills_total_jungle_minion":
            strategy.append("정글링 격차")
        elif tf == "total_dragons":
            strategy.append("용 처치")
        elif tf == "kills_total_towers":
            strategy.append("타워 파괴")
        elif tf == "kills_inhibitors":
            strategy.append("억제기 파괴")
        elif tf == "total_barons":
            strategy.append("바론 처치")
        elif tf == "total_level":
            strategy.append("성장, 레벨링")
        elif tf == "place_wards":
            strategy.append("맵 내 시야 확보")
        elif tf == "kills_wards":
            strategy.append("맵 내 적 시야")
        del winrate_var[twrIdx]
        del tf_after[twrIdx]
    return strategy
