import pandas as pd
import numpy as np
from refinedata import Metadata

def tfphase_analysis(t, team_belongs_to, win_rate, delta, dF, timeline_df):
    feedback = []
    if delta > 0:
        if dF['first_blood'] == 1:
            feedback.append("선취점")
        if dF['kills'] > 0:
            if dF['assists'] == 0:
                feedback.append("스플릿 공격로 압도:{}킬".format(dF['kills']))
            elif dF['assists'] < 4:
                feedback.append("국지전 승리")
            else:
                feedback.append("한타 승리")
        else:
            if dF['kills_total_towers'] > 0:
                feedback.append("스플릿/백도어")
        if dF['first_baron'] == 1:
            feedback.append("첫 번째 바론 선점")
        elif dF['total_barons'] == 1:
            feedback.append("바론 처치")
        if dF['first_tower'] == 1:
            feedback.append("포탑 선취점")
        if dF['kills_total_towers'] > 0:
            if team_belongs_to == 0: # 이기고 있을 때는 아군 껄 가져와야돼.
                topTowerList = list(timeline_df['blueTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['blueMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['blueBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            else: # 유저가 레드팀
                topTowerList = list(timeline_df['redTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['redMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['redBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            content = []
            if topTowerKills != 0:
                if topTowerList[t-1] == 0:
                    content.append("탑 1차")
                elif topTowerList[t-1] == 1:
                    content.append("탑 2차")
                else:
                    content.append("탑 3차")
            if midTowerKills != 0:
                if midTowerList[t-1] == 0:
                    content.append("미드 1차")
                elif midTowerList[t-1] == 1:
                    content.append("미드 2차")
                else:
                    content.append("미드 3차")
            if botTowerKills != 0:
                if botTowerList[t-1] == 0:
                    content.append("봇 1차")
                elif botTowerList[t-1] == 1:
                    content.append("봇 2차")
                else:
                    content.append("봇 3차")
            content = str(content).replace("'", "")
            feedback.append("적의 {} 포탑 파괴".format(content))
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 13:
            feedback.append("cs 격차")
        if jungles > 8:
            feedback.append("정글링 격차")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리하고 승률이 증가
                feedback.append("귀환 후 정비 및 우세 유지")
            else: # 본인 팀이 지고 있는데 승률이 증가
                feedback.append("귀환 후 정비 및 현상 유지")
    else: # 지는 상황
        diff_columns = Metadata().diff_columns
        dF = pd.Series(map(lambda x:-x, dF), index=diff_columns)
        if dF['first_blood'] == 1:
            feedback.append("적의 선취점")
            #sthHappened = True
        if dF['kills'] > 0:
            #sthHappened = True
            if dF['assists'] == 0:
                feedback.append("적의 스플릿 공격로 압도")
            elif dF['assists'] < 4:
                feedback.append("국지전 패배")
            else:
                feedback.append("한타 패배")
        else:
            if dF['kills_total_towers'] > 0:
                feedback.append("적의 스플릿/백도어")
        if dF['first_baron'] == 1:
            feedback.append("적의 첫 번째 바론 선점")
        elif dF['total_barons'] == 1:
            feedback.append("적의 바론 처치")
        if dF['first_tower'] == 1:
            feedback.append("적의 포탑 선취점")
        if dF['kills_total_towers'] > 0:
            if team_belongs_to == 0: # 지고있을 땐 상대팀 껄 가져와야 돼.
                topTowerList = list(timeline_df['redTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['redMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['redBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            else: # 유저가 레드팀, 상대팀은 블루팀
                topTowerList = list(timeline_df['blueTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['blueMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['blueBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            content = []
            if topTowerKills != 0:
                if topTowerList[t-1] == 0:
                    content.append("탑 1차")
                elif topTowerList[t-1] == 1:
                    content.append("탑 2차")
                else:
                    content.append("탑 3차")
            if midTowerKills != 0:
                if midTowerList[t-1] == 0:
                    content.append("미드 1차")
                elif midTowerList[t-1] == 1:
                    content.append("미드 2차")
                else:
                    content.append("미드 3차")
            if botTowerKills != 0:
                if botTowerList[t-1] == 0:
                    content.append("봇 1차")
                elif botTowerList[t-1] == 1:
                    content.append("봇 2차")
                else:
                    content.append("봇 3차")
            content = str(content).replace("'", "")
            feedback.append("아군의 {} 포탑 파괴".format(content))
        if dF['first_inhibitor'] > 0:
            feedback.append("적의 억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("적의 첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("적의 용 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 13:
            feedback.append("cs 격차")
        if jungles > 8:
            feedback.append("정글링 격차")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리한데 승률이 감소
                feedback.append("적의 귀환 후 정비 및 현상 유지")
            else: # 본인 팀이 불리하고 승률이 감소
                feedback.append("적의 귀환 후 정비 및 우세 유지")
    return feedback

def transphase_analysis(t, team_belongs_to, win_rate, delta, dF, timeline_df):
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
            feedback.append("포탑 선취점")
        if dF['kills_total_towers'] > 0:
            if team_belongs_to == 0: # 유저가 블루팀. 상대팀은 레드팀
                topTowerList = list(timeline_df['blueTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['blueMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['blueBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            else: # 유저가 레드팀, 상대팀은 블루팀
                topTowerList = list(timeline_df['redTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['redMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['redBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            content = []
            if topTowerKills != 0:
                if topTowerList[t-1] == 0:
                    content.append("탑 1차")
                elif topTowerList[t-1] == 1:
                    content.append("탑 2차")
                else:
                    content.append("탑 3차")
            if midTowerKills != 0:
                if midTowerList[t-1] == 0:
                    content.append("미드 1차")
                elif midTowerList[t-1] == 1:
                    content.append("미드 2차")
                else:
                    content.append("미드 3차")
            if botTowerKills != 0:
                if botTowerList[t-1] == 0:
                    content.append("봇 1차")
                elif botTowerList[t-1] == 1:
                    content.append("봇 2차")
                else:
                    content.append("봇 3차")
            content = str(content).replace("'", "")
            feedback.append("적의 {} 포탑 파괴".format(content))
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("전령 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 11:
            feedback.append("cs 격차")
        if jungles > 7:
            feedback.append("정글링 격차")
        if dF['total_gold'] > 20*minions+40*jungles+130 and not sthHappened and t < 15:
            feedback.append("공격로 압박, 포탑 방패 파괴")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리하고 승률이 증가
                feedback.append("귀환 후 정비 및 우세 유지")
            else: # 본인 팀이 지고 있는데 승률이 증가
                feedback.append("귀환 후 정비 및 현상 유지")
    else: # 지는 상황
        diff_columns = Metadata().diff_columns
        dF = pd.Series(map(lambda x:-x, dF), index=diff_columns)
        if dF['first_blood'] == 1:
            feedback.append("적의 선취점")
            sthHappened = True
        if dF['kills'] > 1 and dF['assists'] == 0:
            feedback.append("적이 두 라인 이상 압도 혹은 갱킹/로밍 역관광")
            sthHappened = True
        elif dF['kills'] > 1 or dF['assists'] > 0:
            feedback.append("국지전 패배")
            sthHappened = True
        elif dF['kills'] == 1 and dF['assists'] == 0:
            feedback.append("적의 솔로킬")
            sthHappened = True
        if dF['first_tower'] == 1:
            feedback.append("적의 포탑 선취점")
        if dF['kills_total_towers'] > 0:
            if team_belongs_to == 0: # 유저가 블루팀. 상대팀은 레드팀
                topTowerList = list(timeline_df['redTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['redMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['redBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            else: # 유저가 레드팀, 상대팀은 블루팀
                topTowerList = list(timeline_df['blueTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['blueMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['blueBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            content = []
            if topTowerKills != 0:
                if topTowerList[t-1] == 0:
                    content.append("탑 1차")
                elif topTowerList[t-1] == 1:
                    content.append("탑 2차")
                else:
                    content.append("탑 3차")
            if midTowerKills != 0:
                if midTowerList[t-1] == 0:
                    content.append("미드 1차")
                elif midTowerList[t-1] == 1:
                    content.append("미드 2차")
                else:
                    content.append("미드 3차")
            if botTowerKills != 0:
                if botTowerList[t-1] == 0:
                    content.append("봇 1차")
                elif botTowerList[t-1] == 1:
                    content.append("봇 2차")
                else:
                    content.append("봇 3차")
            content = str(content).replace("'", "")
            feedback.append("아군의 {} 포탑 파괴".format(content))
        if dF['first_inhibitor'] > 0:
            feedback.append("적의 억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("적의 첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("적의 용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("적의 전령 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 11:
            feedback.append("cs 격차")
        if jungles > 7:
            feedback.append("정글링 격차")
        if dF['total_gold'] > 20*minions+40*jungles+100 and not sthHappened and t < 15:
            feedback.append("적의 공격로 압박, 포탑 방패 파괴")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리한데 승률이 감소
                feedback.append("적의 귀환 후 정비 및 현상 유지")
            else: # 본인 팀이 불리하고 승률이 감소
                feedback.append("적의 귀환 후 정비 및 우세 유지")
    return feedback

def lanephase_analysis(t, team_belongs_to, win_rate, delta, dF, timeline_df):
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
            feedback.append("포탑 선취점")
        if dF['kills_total_towers'] > 0:
            if team_belongs_to == 0: # 유저가 블루팀. 상대팀은 레드팀
                topTowerList = list(timeline_df['blueTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['blueMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['blueBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            else: # 유저가 레드팀, 상대팀은 블루팀
                topTowerList = list(timeline_df['redTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['redMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['redBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            content = []
            if topTowerKills != 0:
                if topTowerList[t-1] == 0:
                    content.append("탑 1차")
                elif topTowerList[t-1] == 1:
                    content.append("탑 2차")
                else:
                    content.append("탑 3차")
            if midTowerKills != 0:
                if midTowerList[t-1] == 0:
                    content.append("미드 1차")
                elif midTowerList[t-1] == 1:
                    content.append("미드 2차")
                else:
                    content.append("미드 3차")
            if botTowerKills != 0:
                if botTowerList[t-1] == 0:
                    content.append("봇 1차")
                elif botTowerList[t-1] == 1:
                    content.append("봇 2차")
                else:
                    content.append("봇 3차")
            content = str(content).replace("'", "")
            feedback.append("적의 {} 포탑 파괴".format(content))
        if dF['first_inhibitor'] > 0:
            feedback.append("억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("첫 번째 용 처치")
        elif dF['total_dragons'] == 1:
            feedback.append("용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("전령 처치")
        if dF['total_level'] > 1:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 5:
            feedback.append("cs 격차")
        if jungles > 3:
            feedback.append("정글링 격차")
        if dF['total_gold'] > 17*minions+35*jungles+130 and not sthHappened:
            feedback.append("공격로 압박, 포탑 방패 파괴")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리하고 승률이 증가
                feedback.append("귀환 후 정비 및 우세 유지")
            else: # 본인 팀이 지고 있는데 승률이 증가
                feedback.append("귀환 후 정비 및 현상 유지")
    else: # 지는 상황
        diff_columns = Metadata().diff_columns
        dF = pd.Series(map(lambda x:-x, dF), index=diff_columns)
        if dF['first_blood'] == 1:
            feedback.append("적의 선취점")
            sthHappened = True
        if dF['kills'] > 1 and dF['assists'] == 0:
            feedback.append("적이 두 라인 이상 압도 혹은 갱킹/로밍 역관광")
            sthHappened = True
        elif dF['kills'] > 1 or dF['assists'] > 0:
            feedback.append("국지전 패배")
            sthHappened = True
        elif dF['kills'] == 1 and dF['assists'] == 0:
            feedback.append("적의 솔로킬")
            sthHappened = True
        if dF['first_tower'] == 1:
            feedback.append("적의 포탑 선취점")
        if dF['kills_total_towers'] > 0:
            if team_belongs_to == 0: # 유저가 블루팀. 상대팀은 레드팀
                topTowerList = list(timeline_df['redTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['redMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['redBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            else: # 유저가 레드팀, 상대팀은 블루팀
                topTowerList = list(timeline_df['blueTopTowerKills'])
                topTowerKills = topTowerList[t]-topTowerList[t-1]
                midTowerList = list(timeline_df['blueMidTowerKills'])
                midTowerKills = midTowerList[t]-midTowerList[t-1]
                botTowerList = list(timeline_df['blueBotTowerKills'])
                botTowerKills = botTowerList[t]-botTowerList[t-1]
            content = []
            if topTowerKills != 0:
                if topTowerList[t-1] == 0:
                    content.append("탑 1차")
                elif topTowerList[t-1] == 1:
                    content.append("탑 2차")
                else:
                    content.append("탑 3차")
            if midTowerKills != 0:
                if midTowerList[t-1] == 0:
                    content.append("미드 1차")
                elif midTowerList[t-1] == 1:
                    content.append("미드 2차")
                else:
                    content.append("미드 3차")
            if botTowerKills != 0:
                if botTowerList[t-1] == 0:
                    content.append("봇 1차")
                elif botTowerList[t-1] == 1:
                    content.append("봇 2차")
                else:
                    content.append("봇 3차")
            content = str(content).replace("'", "")
            feedback.append("아군의 {} 포탑 파괴".format(content))
        if dF['first_inhibitor'] > 0:
            feedback.append("적의 억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("적의 첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("적의 용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("적의 전령 처치")
        if dF['total_level'] > 1:
            feedback.append("레벨 격차")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 5:
            feedback.append("cs 격차")
        if jungles > 3:
            feedback.append("정글링 격차")
        if dF['total_gold'] > 17*minions+35*jungles+100 and not sthHappened:
            feedback.append("적의 공격로 압박, 포탑 방패 파괴")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리한데 승률이 감소
                feedback.append("적의 귀환 후 정비 및 현상 유지")
            else: # 본인 팀이 불리하고 승률이 감소
                feedback.append("적의 귀환 후 정비 및 우세 유지")
    return feedback