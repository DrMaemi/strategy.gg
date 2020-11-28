import pandas as pd
import numpy as np
from refinedata import Metadata

def tfphase_analysis(delta, dF):
    feedback = []
    sthHappened = False
    if delta > 0:
        if dF['first_blood'] == 1:
            feedback.append("선취점")
            sthHappened = True
        if dF['kills'] > 0:
            sthHappened = True
            if dF['assists'] == 0:
                feedback.append("스플릿 공격로 압도")
            elif dF['assists'] < 4:
                feedback.append("국지전 승리")
            else:
                feedback.append("한타 승리")
        else:
            if dF['kills_total_towers'] > 0:
                feedback.append("스플릿/백도어")
        if dF['first_baron'] == 1:
            feedback.append("첫 번째 바론 선점")
        elif dF['total_baron'] == 1:
            feedback.append("바론 처치")
        if dF['first_tower'] == 1:
            feedback.append("타워 선취점")
        elif dF['kills_total_towers'] > 0:
            feedback.append("타워 파괴")
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1 or dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 19:
            feedback.append("cs 격차")
        if jungles > 14:
            feedback.append("정글링 격차")
    else:
        diff_columns = Metadata().diff_columns
        dF = pd.Series(map(lambda x:-x, dF), index=diff_columns)
        if dF['first_blood'] == 1:
            feedback.append("선취점")
            sthHappened = True
        if dF['kills'] > 0:
            sthHappened = True
            if dF['assists'] == 0:
                feedback.append("스플릿 공격로 압도")
            elif dF['assists'] < 4:
                feedback.append("국지전 패배")
            else:
                feedback.append("한타 패배")
        else:
            if dF['kills_total_towers'] > 0:
                feedback.append("스플릿/백도어")
        if dF['first_baron'] == 1:
            feedback.append("첫 번째 바론 선점")
        elif dF['total_baron'] == 1:
            feedback.append("바론 처치")
        if dF['first_tower'] == 1:
            feedback.append("타워 선취점")
        elif dF['kills_total_towers'] > 0:
            feedback.append("타워 파괴")
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1 or dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 19:
            feedback.append("cs 격차")
        if jungles > 14:
            feedback.append("정글링 격차")
    return feedback

def transphase_analysis(t, delta, dF):
    feedback = []
    sthHappened = False
    if delta > 0: # 이기는 상황
        if dF['first_blood'] == 1:
            feedback.append("선취점")
            sthHappened = True
        if dF['kills'] > 1 and dF['assists'] == 0:
            feedback.append("두 라인 이상 압도 혹은 갱킹/로밍 역관광")
            sthHappened = True
        elif dF['kills'] > 1 or dF['assists'] > 0:
            feedback.append("국지전 승리")
            sthHappened = True
        elif dF['kills'] == 1 and dF['assists'] == 0:
            feedback.append("아군의 솔로킬")
            sthHappened = True
        if dF['first_tower'] == 1:
            feedback.append("타워 선취점")
        elif dF['kills_total_towers'] > 0:
            feedback.append("타워 파괴")
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1 or dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("전령 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 11:
            feedback.append("cs 격차")
        if jungles > 8:
            feedback.append("정글링 격차")
        if dF['total_gold'] > 30*minions+43*jungles+130 and not sthHappened and t < 15:
            feedback.append("공격로 압박, 포탑 방패 파괴")
    else:
        diff_columns = Metadata().diff_columns
        dF = pd.Series(map(lambda x:-x, dF), index=diff_columns)
        if dF['first_blood'] == 1:
            feedback.append("선취점")
            sthHappened = True
        if dF['kills'] > 1 and dF['assists'] == 0:
            feedback.append("두 라인 이상 압도 혹은 갱킹/로밍 역관광")
            sthHappened = True
        elif dF['kills'] > 1 or dF['assists'] > 0:
            feedback.append("국지전 패배")
            sthHappened = True
        elif dF['kills'] == 1 and dF['assists'] == 0:
            feedback.append("적의 솔로킬")
            sthHappened = True
        if dF['first_tower'] == 1:
            feedback.append("타워 선취점")
        elif dF['kills_total_towers'] > 0:
            feedback.append("타워 파괴")
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1 or dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("전령 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 11:
            feedback.append("cs 격차")
        if jungles > 8:
            feedback.append("정글링 격차")
        if dF['total_gold'] > 30*minions+43*jungles+130 and not sthHappened and t < 15:
            feedback.append("공격로 압박, 포탑 방패 파괴")
    return feedback

def lanephase_analysis(delta, dF):
    feedback = []
    sthHappened = False
    if delta > 0: # 이기는 상황
        if dF['first_blood'] == 1:
            feedback.append("선취점")
            sthHappened = True
        if dF['kills'] > 1 and dF['assists'] == 0:
            feedback.append("두 라인 이상 압도 혹은 갱킹/로밍 역관광")
            sthHappened = True
        elif dF['kills'] > 1 or dF['assists'] > 0:
            feedback.append("국지전 승리")
            sthHappened = True
        elif dF['kills'] == 1 and dF['assists'] == 0:
            feedback.append("아군의 솔로킬")
            sthHappened = True
        if dF['first_tower'] == 1:
            feedback.append("타워 선취점")
        elif dF['kills_total_towers'] > 0:
            feedback.append("타워 파괴")
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1 or dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("전령 처치")
        if dF['total_level'] > 1:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 5:
            feedback.append("cs 격차")
        if jungles > 4:
            feedback.append("정글링 격차")
        if dF['total_gold'] > 25*minions+38*jungles+130 and not sthHappened:
            feedback.append("공격로 압박, 포탑 방패 파괴")
    else:
        diff_columns = Metadata().diff_columns
        dF = pd.Series(map(lambda x:-x, dF), index=diff_columns)
        if dF['first_blood'] == 1:
            feedback.append("선취점")
            sthHappened = True
        if dF['kills'] > 1 and dF['assists'] == 0:
            feedback.append("두 라인 이상 압도 혹은 갱킹/로밍 역관광")
            sthHappened = True
        elif dF['kills'] > 1 or dF['assists'] > 0:
            feedback.append("국지전 패배")
            sthHappened = True
        elif dF['kills'] == 1 and dF['assists'] == 0:
            feedback.append("적의 솔로킬")
            sthHappened = True
        if dF['first_tower'] == 1:
            feedback.append("타워 선취점")
        elif dF['kills_total_towers'] > 0:
            feedback.append("타워 파괴")
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1 or dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("전령 처치")
        if dF['total_level'] > 1:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 5:
            feedback.append("cs 격차")
        if jungles > 4:
            feedback.append("정글링 격차")
        if dF['total_gold'] > 25*minions+38*jungles+130 and not sthHappened:
            feedback.append("공격로 압박, 포탑 방패 파괴")
    return feedback