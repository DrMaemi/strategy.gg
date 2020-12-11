import pandas as pd
import numpy as np
from refinedata import Metadata

posTypes = ["탑", "봇", "미드", "블루팀 위쪽 정글", "블루팀 아래쪽 정글", "레드팀 위쪽 정글", "레드팀 아래쪽 정글", "전령/바론 앞", "용 앞"]

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

def makeCombatState(events):
    combatState = {"blue":{}, "red":{}}
    for pos in posTypes:
        combatState['blue'][pos] = {'participants':set(), 'victims':set()}
        combatState['red'][pos] = {'participants':set(), 'victims':set()}
    for event in events:
        if event['type'] == "CHAMPION_KILL":
            # 유저가 블루팀일 때 블루가 킬한 경우만
            killerId = event['killerId'] # int
            if killerId <= 5:
                pos = distinguish_pos(event['position']['x'], event['position']['y'])
                combatState['blue'][pos]['participants'].add(killerId)
                try:
                    for assistant in event['assistingParticipantIds']:
                        combatState['blue'][pos]['participants'].add(assistant)
                except KeyError: pass
                combatState['blue'][pos]['victims'].add(event['victimId'])
            elif killerId > 5:
                pos = distinguish_pos(event['position']['x'], event['position']['y'])
                combatState['red'][pos]['participants'].add(killerId)
                try:
                    for assistant in event['assistingParticipantIds']:
                        combatState['red'][pos]['participants'].add(assistant)
                except KeyError: pass
                combatState['red'][pos]['victims'].add(event['victimId'])
    return combatState

def calCombatFeedback(target_id, team_belongs_to, combatState, feedback):
    if team_belongs_to == 0: # 유저가 블루팀
        for pos in combatState['blue'].keys():
            participants = combatState['blue'][pos]['participants'] # set
            victims = combatState['blue'][pos]['victims']
            numParticipants = len(participants) # 킬 참가자들
            numVictims = len(victims) # 희생자들
            if numParticipants == 1:
                if numVictims == 1:
                    if target_id in participants:
                        feedback.append("내가 {}에서 솔로킬".format(pos))
                    else:
                        feedback.append("아군이 {}에서 솔로킬".format(pos))
                elif numVictims > 1:
                    if target_id in participants:
                        feedback.append("나의 슈퍼플레이: {}에서 단신으로 적 {}명 처치".format(pos, numVictims))
                    else:
                        feedback.append("아군의 슈퍼플레이: {}에서 단신으로 적 {}명 처치".format(pos, numVictims))
            elif numParticipants > 1:
                if target_id in participants:
                    feedback.append("나와 아군 {}명이 {}에서 적 {}명 처치".format(numParticipants-1, pos, numVictims))
                else:
                    feedback.append("아군 {}명이 {}에서 적 {}명 처치".format(numParticipants, pos, numVictims))
            participants = combatState['red'][pos]['participants'] # type:Set(), 레드팀은 적
            victims = combatState['red'][pos]['victims']
            numParticipants = len(participants) # 킬 참가자들
            numVictims = len(victims) # 희생자들
            if numParticipants == 1: # 적이 아군을 처치하는 경우 중 어시없이.
                if numVictims == 1:
                    if target_id in victims:
                        feedback.append("적이 {}에서 나를 솔로킬".format(pos))
                    else:
                        feedback.append("적이 {}에서 솔로킬".format(pos))
                elif numVictims > 1:
                    if target_id in victims:
                        feedback.append("적의 슈퍼플레이: {}에서 단신으로 나와 아군 {}명 처치".format(pos, numVictims-1))
                    else:
                        feedback.append("적의 슈퍼플레이: {}에서 단신으로 아군 {}명 처치".format(pos, numVictims))
            elif numParticipants > 1:
                if target_id in victims:
                    feedback.append("적 {}명이 {}에서 나와 아군 {}명 처치".format(numParticipants, pos, numVictims-1))
                else:
                    feedback.append("적 {}명이 {}에서 아군 {}명 처치".format(numParticipants, pos, numVictims))
    else: # 유저가 레드팀
        for pos in combatState['red'].keys():
            participants = combatState['red'][pos]['participants'] # set
            victims = combatState['red'][pos]['victims']
            numParticipants = len(participants) # 킬 참가자들
            numVictims = len(victims) # 희생자들
            if numParticipants == 1:
                if numVictims == 1:
                    if target_id in participants:
                        feedback.append("내가 {}에서 솔로킬".format(pos))
                    else:
                        feedback.append("아군이 {}에서 솔로킬".format(pos))
                elif numVictims > 1:
                    if target_id in participants:
                        feedback.append("나의 슈퍼플레이: {}에서 단신으로 적 {}명 처치".format(pos, numVictims))
                    else:
                        feedback.append("아군의 슈퍼플레이: {}에서 단신으로 적 {}명 처치".format(pos, numVictims))
            elif numParticipants > 1:
                if target_id in participants:
                    feedback.append("나와 아군 {}명이 {}에서 적 {}명 처치".format(numParticipants-1, pos, numVictims))
                else:
                    feedback.append("아군 {}명이 {}에서 적 {}명 처치".format(numParticipants, pos, numVictims))
            participants = combatState['blue'][pos]['participants'] # type:Set(), 레드팀은 적
            victims = combatState['blue'][pos]['victims']
            numParticipants = len(participants) # 킬 참가자들
            numVictims = len(victims) # 희생자들
            if numParticipants == 1: # 적이 아군을 처치하는 경우 중 어시없이.
                if numVictims == 1:
                    if target_id in victims:
                        feedback.append("적이 {}에서 나를 솔로킬".format(pos))
                    else:
                        feedback.append("적이 {}에서 솔로킬".format(pos))
                elif numVictims > 1:
                    if target_id in victims:
                        feedback.append("적의 슈퍼플레이: {}에서 단신으로 나와 아군 {}명 처치".format(pos, numVictims-1))
                    else:
                        feedback.append("적의 슈퍼플레이: {}에서 단신으로 아군 {}명 처치".format(pos, numVictims))
            elif numParticipants > 1:
                if target_id in victims:
                    feedback.append("적 {}명이 {}에서 나와 아군 {}명 처치".format(numParticipants, pos, numVictims-1))
                else:
                    feedback.append("적 {}명이 {}에서 아군 {}명 처치".format(numParticipants, pos, numVictims))
    return feedback
        
def tfphase_analysis(t, target_id, team_belongs_to, win_rate, delta, dF, timeline_df, events):
    feedback = []
    combatState = makeCombatState(events)
    if delta > 0:
        if dF['first_blood'] == 1:
            feedback.append("선취점")
        feedback = calCombatFeedback(target_id, team_belongs_to, combatState, feedback)
        if dF['kills'] < 1 and dF['kills_total_towers'] > 0:
            feedback.append("아군의 스플릿/백도어")
        if dF['first_baron'] == 1:
            feedback.append("첫 번째 바론 선점")
        elif dF['total_barons'] == 1:
            feedback.append("아군이 바론 처치")
        if dF['first_tower'] == 1:
            feedback.append("아군의 포탑 선취점")
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
                elif midTowerList[t-1] == 2:
                    content.append("미드 3차")
                else:
                    content.append("넥서스")
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
            feedback.append("아군의 억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("아군이 억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("아군이 용 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 우위")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 13:
            feedback.append("cs 우위")
        if jungles > 8:
            feedback.append("정글링 우위")
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
        feedback = calCombatFeedback(target_id, team_belongs_to, combatState, feedback)
        if dF['kills'] < 1 and dF['kills_total_towers'] > 0:
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
                elif midTowerList[t-1] == 2:
                    content.append("미드 3차")
                else:
                    content.append("넥서스")
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
            feedback.append("적이 억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("적의 첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("적의 용 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 열세")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 13:
            feedback.append("cs 열세")
        if jungles > 8:
            feedback.append("정글링 열세")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리한데 승률이 감소
                feedback.append("적의 귀환 후 정비 및 현상 유지")
            else: # 본인 팀이 불리하고 승률이 감소
                feedback.append("적의 귀환 후 정비 및 우세 유지")
    return feedback

def transphase_analysis(t, target_id, team_belongs_to, win_rate, delta, dF, timeline_df, events):
    feedback = []
    sthHappened = False
    combatState = makeCombatState(events)
    if delta > 0: # 이기는 상황
        if dF['first_blood'] == 1:
            feedback.append("선취점")
            sthHappened = True
        feedback = calCombatFeedback(target_id, team_belongs_to, combatState, feedback)
        if dF['kills'] > 0: sthHappened = True
        if dF['first_tower'] == 1:
            feedback.append("아군의 포탑 선취점")
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
                elif midTowerList[t-1] == 2:
                    content.append("미드 3차")
                else:
                    content.append("넥서스")
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
            feedback.append("아군의 억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("아군이 억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("아군이 용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("아군이 전령 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 우위")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 11:
            feedback.append("cs 우위")
        if jungles > 7:
            feedback.append("정글링 우위")
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
        feedback = calCombatFeedback(target_id, team_belongs_to, combatState, feedback)
        if dF['kills'] > 0: sthHappened = True
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
                elif midTowerList[t-1] == 2:
                    content.append("미드 3차")
                else:
                    content.append("넥서스")
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
            feedback.append("적이 억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("적의 첫 번째 용 선점")
        elif dF['total_dragons'] == 1:
            feedback.append("적의 용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("적의 전령 처치")
        if dF['total_level'] > 2:
            feedback.append("레벨 열세")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 11:
            feedback.append("cs 열세")
        if jungles > 7:
            feedback.append("정글링 열세")
        if dF['total_gold'] > 20*minions+40*jungles+100 and not sthHappened and t < 15:
            feedback.append("적의 공격로 압박, 포탑 방패 파괴")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리한데 승률이 감소
                feedback.append("적의 귀환 후 정비 및 현상 유지")
            else: # 본인 팀이 불리하고 승률이 감소
                feedback.append("적의 귀환 후 정비 및 우세 유지")
    return feedback

def lanephase_analysis(t, target_id, team_belongs_to, win_rate, delta, dF, timeline_df, events):
    feedback = []
    combatState = makeCombatState(events)
    sthHappened = False
    if delta > 0: # 이기는 상황
        if dF['first_blood'] == 1:
            feedback.append("선취점")
            sthHappened = True
        feedback = calCombatFeedback(target_id, team_belongs_to, combatState, feedback)
        if dF['kills'] > 0: sthHappened = True
        if dF['first_tower'] == 1:
            feedback.append("아군의 포탑 선취점")
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
                elif midTowerList[t-1] == 2:
                    content.append("미드 3차")
                else:
                    content.append("넥서스")
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
            feedback.append("아군의 억제기 선취점")
        elif dF['kills_inhibitors'] > 0:
            feedback.append("아군이 억제기 파괴")
        if dF['first_dragon'] == 1:
            feedback.append("첫 번째 용 처치")
        elif dF['total_dragons'] == 1:
            feedback.append("아군이 용 처치")
        if dF['rift_heralds'] == 1:
            feedback.append("아군이 전령 처치")
        if dF['total_level'] > 1:
            feedback.append("레벨 우위")
        minions = dF['kills_total_minion']
        jungles = dF['kills_total_jungle_minion']
        if minions > 5:
            feedback.append("cs 우위")
        if jungles > 3:
            feedback.append("정글링 우위")
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
        feedback = calCombatFeedback(target_id, team_belongs_to, combatState, feedback)
        if dF['kills'] > 0: sthHappened = True
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
                elif midTowerList[t-1] == 2:
                    content.append("미드 3차")
                else:
                    content.append("넥서스")
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
            feedback.append("적이 억제기 파괴")
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
            feedback.append("cs 열세")
        if jungles > 3:
            feedback.append("정글링 열세")
        if dF['total_gold'] > 17*minions+35*jungles+100 and not sthHappened:
            feedback.append("적의 공격로 압박, 포탑 방패 파괴")
        if len(feedback) == 0:
            if win_rate > 50: # 본인 팀이 유리한데 승률이 감소
                feedback.append("적의 귀환 후 정비 및 현상 유지")
            else: # 본인 팀이 불리하고 승률이 감소
                feedback.append("적의 귀환 후 정비 및 우세 유지")
    return feedback