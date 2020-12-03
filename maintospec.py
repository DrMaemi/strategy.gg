import pandas as pd
import numpy as np
import requests, time, sys
from math import ceil

from sklearn.preprocessing import StandardScaler

from preprocessfordb import processString
import processforps as ps
import processdb as db
from refinedata import get_timeline_features, refine_timeline_df, Metadata

def getanalysis(summoner_name, game_id):
    timelinespec = db.load_timelinespec(summoner_name, game_id)
    analysis = {
        "gold_differences":timelinespec['gold_differences'],
        "win_rates":timelinespec['win_rates'],
        "feedback_points":timelinespec['feedback_points']
    }
    return analysis

def getfboutline(win_rates):
    # 우선 매 분마다 win_rates의 변화도를 구한다
    length = len(win_rates)
    differentials = []
    for idx in range(length-1):
        differentials.append(win_rates[idx+1]-win_rates[idx])
    totalFeedbacks, alpha = divmod(length, 5)
    if totalFeedbacks == 0:
        feedback_num = [0, 0]
        feedback_points = 0
    else: # itvidx: interval index
        pFeedbackNum, nFeedbackNum = 0, 0
        feedback_points = {} # key : point(timestamp)
        maxDifferentials = [] # 각 구간의 최고 변화율을 담는다.
        for itvidx in range(totalFeedbacks):
            if itvidx == 0:
                lower, upper = 0, 4
            else:
                lower, upper = 5*itvidx-1, 5*(itvidx+1)-1
            targetInterval = differentials[lower:upper]
            absInterval = list(map(abs, targetInterval))
            maxDifferential = max(absInterval)
            maxDifferentials.append(maxDifferential)
            point = absInterval.index(maxDifferential)
            delta = round(targetInterval[point], 1)
            if delta > 0: # 긍정적 피드백
                feedback_points[str(point+lower+1)] = {
                    "win_rate":win_rates[point+lower],
                    "delta":delta
                }
                pFeedbackNum += 1
            elif delta < 0: # 부정적 피드백
                feedback_points[str(point+lower+1)] = {
                    "win_rate":win_rates[point+lower],
                    "delta":delta
                }
                nFeedbackNum += 1
        if alpha != 0: # 5분씩 나눈 구간 후 마지막 구간
            lower = 5*(totalFeedbacks)-1
            targetInterval = differentials[lower:]
            absInterval = list(map(abs, targetInterval))
            maxDifferential = max(absInterval)
            if maxDifferential >= np.median(maxDifferentials):
                point = absInterval.index(maxDifferential)
                delta = round(targetInterval[point], 1)
                if delta > 0:
                    feedback_points[str(point+lower+1)] = {
                    "win_rate":win_rates[point+lower],
                    "delta":delta
                    }
                    pFeedbackNum += 1
                elif delta < 0:
                    feedback_points[str(point+lower+1)] = {
                    "win_rate":win_rates[point+lower],
                    "delta":delta
                    }
                    nFeedbackNum += 1
        feedback_num = [pFeedbackNum, nFeedbackNum]
    feedbackOutline = {
        "feedback_num":feedback_num,
        "feedback_points":feedback_points # List<Json>
    }
    return feedbackOutline

def getspec(info, Models):
    #keys of userspec = ["summoner_name", "profile_icon_id", "tier", "league_point"]
    #keys of matchspecs = ["team", "win", "champion_id", "level", "spell_id", "kill", "death", "assist","avg"\
    #                , "lane", "score", "duration", "num_of_feedback"]
    if info == 0: return 0 # 존재하지 않는 소환사입니다.
    elif info == 1: return 1 # 정보를 받아오는데 너무 오래 걸립니다.
    summoner_name = info['userinfo']['name']
    summoner_name_db = processString(summoner_name)
    try:
        for leagueinfo in info['leagueinfo']:
            if leagueinfo['queueType'] == "RANKED_SOLO_5x5":
                targetLeagueInfo = leagueinfo
        userspec = {
            "summoner_name":summoner_name,
            "profile_icon_id":info['userinfo']['profileIconId'],
            "tier":targetLeagueInfo['tier'],
            "rank":targetLeagueInfo['rank'],
            "league_point":targetLeagueInfo['leaguePoints']
        }
    except:
        userspec = {
            "summoner_name":summoner_name,
            "profile_icon_id":info['userinfo']['profileIconId'],
            "tier":0,
            "rank":0,
            "league_point":0
        }
    matchspecs = []
    outlines = info['5matches']['outlines']
    if outlines == 0:
        spec = {
            "userspec":userspec,
            "matchspecs":0
        }
        db.store_spec(summoner_name_db, spec)
        return spec
    matchinfos = info['5matches']['matchinfos']
    timelines = info['5matches']['timelines'] # list of json: gameId, timeline_data
    for idx, outline in enumerate(outlines['matches']):
        game_id = outline['gameId']
        whenGamePlayed = int(str(outline['timestamp'])[:11])/10
        time_passed = ceil(round(time.time(), 1)-whenGamePlayed)
        matchinfo = matchinfos[idx]
        timeline_data = timelines[idx]['timeline_data'] # 해당 게임의 시간대 데이터
        # find particiapnt id for this player
        for identity in matchinfo['participantIdentities']:
            if identity['player']['summonerName'] == summoner_name:
                targetId = identity['participantId']
                break
        if targetId <= 5: # this player belongs to blue team
            team = 0 # blue team
            if matchinfo['teams'][0]['win'] == 'Win': win = 1
            else: win = 0
        else: # this player belongs to red team
            team = 1 # red team
            if matchinfo['teams'][1]['win'] == 'Win': win = 1
            else: win = 0
        targetParticipant = matchinfo['participants'][targetId-1] # json
        spell1id, spell2id = targetParticipant['spell1Id'], targetParticipant['spell2Id']
        role = outline['role']
        lane = outline['lane']
        #if lane == "NONE":
        if spell1id == 11 or spell2id == 11:
            lane = "JUNGLE"
        else:
            calPositions = { "TOP":0, "MID":0, "BOTTOM":0 }
            frames = timeline_data['frames']
            frames = frames[3:11]
            try:
                for frame in frames:
                    participantFrames = frame['participantFrames']
                    for pfidx in range(1, 11):
                        pf = participantFrames[str(pfidx)]
                        if pf['participantId'] == targetId:
                            x, y = pf['position']['x'], pf['position']['y']
                            if (x<4000 and y>4000) or (x<11000 and y>11000):
                                calPositions['TOP'] += 1
                            elif (x>4000 and y<4000) or (x>11000 and y<11000):
                                calPositions['BOTTOM'] += 1
                            else:
                                calPositions['MID'] += 1
                            break
                posVals = list(calPositions.values())
                posKeys = list(calPositions.keys())
                lane = posKeys[posVals.index(max(posVals))]
            except: pass
            if lane == "BOTTOM":
                if role == "DUO_SUPPORT": lane = "SUPPORTER"
                else:
                    csList = [] # 해당 경기 각 플레이어의 총 cs 획득 수를 담는다
                    if team == 0: # target 유저가 블루팀인 경우
                        for pidx in range(5):
                            ptcp = matchinfo['participants'][pidx]
                            csKilled = ptcp['stats']['totalMinionsKilled']
                            csList.append(csKilled)
                    else: # target 유저가 레드팀인 경우
                        for pidx in range(5, 10):
                            ptcp = matchinfo['participants'][pidx]
                            csKilled = ptcp['stats']['totalMinionsKilled']
                            csList.append(csKilled)
                    supporterId = csList.index(min(csList))+1
                    if team == 1: supporterId += 5
                    if targetId == supporterId: lane = "SUPPORTER"
        # lane이 정해졌으면, 플레이스타일용 데이터도 저장
        ps_db_features = ps.PlayStyle().ps_db_features
        ps_features = ps.PlayStyle().ps_features
        ps_df = pd.json_normalize(targetParticipant)
        ps_df = ps_df[ps_features]
        ps_npArr = np.array(ps_df)
        ps_Arr = []
        for rpsnparr in ps_npArr:
            ps_Arr.append(list(map(float, rpsnparr)))
        ps_df = pd.DataFrame(ps_Arr, columns=ps_db_features)
        ps_json = eval(ps_df.to_json(orient="records"))
        print("ps_json: {}".format(ps_json))
        ps_json_db = {
            "tier":targetLeagueInfo['tier'],
            "lane":lane,
            "ps_json":ps_json
        }
        db.store_ps_json(summoner_name_db, game_id, ps_json_db) # 저장 끝
        stats = targetParticipant['stats'] # json
        kill = stats['kills']
        death = stats['deaths']
        assist = stats['assists']
        level = stats['champLevel']
        if death == 0:
            avg = "Perfect"
        else:
            avg = round((kill+assist)/death, 2)
        blueKills, redKills = 0, 0
        for i, participant in enumerate(matchinfo['participants']):
            if i < 5: # 0 to 4 : blue team participants
                blueKills += participant['stats']['kills']
            else: # 5 to 9 : red team participants
                redKills += participant['stats']['kills']
        if team == 0: # 블루팀이면
            team_score = "{}:{}".format(blueKills, redKills)
        elif team == 1: # 레드팀이면
            team_score = "{}:{}".format(redKills, blueKills)
        duration = matchinfo['gameDuration']
        endtime = ceil(duration/60) # 해당 게임이 끝난 시간(분)
        timeline_json = db.load_timeline_dataframe(game_id)
        timeline_df = pd.DataFrame() # 가공한 시간대 데이터를 넣을 리스트 준비, 리스트의 최종 shape = (진행시간, #features)
        if timeline_json is None: # 타임라인 데이터프레임이 저장되어있지 않음
            for tl in range(1, endtime+1):
                timeline_features = get_timeline_features(timeline_data, tl*60000)
                timeline_df = pd.concat([timeline_df, timeline_features])
            db.store_timeline_dataframe(game_id, timeline_df)
        else: # 타임라인 데이터프레임이 저장되어 있는 경우
            raw_columns = Metadata().raw_columns
            for tldata in timeline_json:
                df_row = pd.DataFrame([tldata], columns=raw_columns)
                timeline_df = pd.concat([timeline_df, df_row])
        refined_timeline_df = refine_timeline_df(timeline_df)
        gold_differences = refined_timeline_df['total_gold'].tolist()
        for i in range(len(gold_differences)):
            gold = gold_differences[i]
            if team == 0:
                gold_differences[i] = int(gold)
            elif team == 1: # 레드팀 - 블루팀의 골드 차이로 계산
                gold_differences[i] = -int(gold)
        # 모델을 이용하기 전 timelinespec 데이터가 있는지 확인
        timelinespec_db = db.load_timelinespec(summoner_name_db, game_id)
        if timelinespec_db is None:
            # 모델을 이용해서 기대승률 그래프 생성
            win_rates = [0.5] # at 1 minute, win rate is 50%
            refined_timeline_npArr = np.array(refined_timeline_df)
            model_tier = userspec['tier']
            try:
                models = Models[model_tier]
            except KeyError:
                models = Models["GOLD"]
            scaler = StandardScaler()
            for tl in range(2, endtime+1):
                if tl > 10: break
                input_data = refined_timeline_npArr[:tl, :]
                input_data = scaler.fit_transform(input_data)
                timestamps, input_dim = input_data.shape
                input_data = input_data.reshape(1, timestamps, input_dim)
                if team == 0: # 블루팀이 이길 확률 계산
                    win_rate = models[tl-2].predict(input_data)[0][0] # 2분 모델부터 0번 인덱스에 들어가 있다.
                elif team == 1: # 레드팀이 이길 확률 계산
                    win_rate = models[tl-2].predict(input_data)[0][1]
                win_rates.append(win_rate)
            """피드백 개수도 알려줘야 하는데."""
            refined_timeline_data = eval(refined_timeline_df.to_json(orient="records")) # df.to_json object, List<json>
            win_rates = list(win_rates)
            for ridx, win_rate in enumerate(win_rates):
                win_rates[ridx] = round(float(win_rate*100), 1)
            feedbackOutline = getfboutline(win_rates)
            feedbacks = feedbackOutline['feedback_num']
            feedback_points = feedbackOutline['feedback_points']
            timelinespec = {
                "tier":userspec['tier'],
                "team_belongs_to":team, # 팀 정보를 알아야 refined_timeline_data를 알맞게 분석할 수 있다.
                "refined_timeline_data":refined_timeline_data,
                "gold_differences":gold_differences,
                "win_rates":win_rates,
                "feedback_points":feedback_points
            }
            db.store_timelinespec(summoner_name_db, game_id, timelinespec)
        else: # timelinespec_db is not None. db에 데이터가 있었음
            win_rates = timelinespec_db['win_rates']
            feedbackOutline = getfboutline(win_rates)
            feedbacks = feedbackOutline['feedback_num']
        matchspec = {
            "game_id":game_id,
            "time_passed":time_passed,
            "team":team, # blue: 0, red: 1
            "win":win, # int: lose: 0, win: 1
            "champion_id":outline['champion'], # int
            "level":level, # int
            "spell_id":[spell1id, spell2id], # list: int[2]
            "kill":kill, # int
            "death":death, # int
            "assist":assist, # int
            "avg":avg, # float..2
            "lane":lane,
            "role":role,
            "team_score":team_score,
            "duration":duration,
            "feedbacks":feedbacks # [# positives, # negatives]
        }
        matchspecs.append(matchspec)
    spec = {
        "userspec":userspec, # json
        "matchspecs":matchspecs # list<json>
    }
    db.store_spec(summoner_name_db, spec)
    return spec

def getinfo(summoner_name, api_key):
    info = {}
    url = 'https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/'\
            + summoner_name + '?api_key=' + api_key
    r = requests.get(url)
    start_time = time.time()
    if r.status_code == 404: # 소환사 이름이 존재하지 않는 경우
        return 0
    while r.status_code != 200: # api 요청에 오류가 있는 경우
        if time.time() - start_time >= 30:
            return 1
        time.sleep(3)
        r = requests.get(url)
    info['userinfo'] = r.json()
    summoner_id = r.json()['id']
    account_id = r.json()['accountId']
    leagueinfo = getleagueinfo(summoner_id, api_key)
    if leagueinfo == 1: return 1 # 리그 정보를 받아오는데 너무 오래 걸림
    matches = get5matches(account_id, api_key)
    if matches == 1: return 1 # 매치 정보를 받아오는데 너무 오래 걸림
    info['leagueinfo'] = leagueinfo
    info['5matches'] = matches
    return info
    
def getleagueinfo(summoner_id, api_key):
    url = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"\
            + summoner_id + "?api_key=" + api_key
    r = requests.get(url)
    start_time = time.time()
    while r.status_code != 200: # api 요청에 오류가 있는 경우
        if time.time() - start_time >= 30:
            return 1
        time.sleep(3)
        r = requests.get(url)
    return r.json()
    
def get5matches(account_id, api_key):
    result = {}
    url = 'https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/'\
            + account_id + '?queue=420&season=13&endIndex=5' + '&api_key=' + api_key
    r = requests.get(url)
    if r.status_code == 404: # 매치 정보가 없는 경우
        result['outlines'] = 0
        result['matchinfos'] = 0
        result['timelines'] = 0
        return result
    start_time = time.time()
    while r.status_code != 200: # api 요청에 오류가 있는 경우
        if time.time() - start_time >= 30:
            return 1
        time.sleep(3)
        r = requests.get(url)
    outlines = r.json()
    matches = outlines['matches']
    gameIdList = []
    for match in matches:
        gameIdList.append(match['gameId'])
    matchinfos, timelines = [], []
    for match_id in gameIdList:
        # 집계 데이터 얻기
        url = "https://kr.api.riotgames.com/lol/match/v4/matches/"\
                + str(match_id) + "?api_key=" + api_key
        r = requests.get(url)
        start_time = time.time()
        while r.status_code != 200: # api 요청에 오류가 있는 경우
            if time.time() - start_time >= 30:
                return 1
            time.sleep(3)
            r = requests.get(url)
        matchinfos.append(r.json())
        # 시간대별 데이터 얻기
        url = "https://kr.api.riotgames.com/lol/match/v4/timelines/by-match/"\
                + str(match_id) + "?api_key=" + api_key
        r = requests.get(url)
        while r.status_code != 200: # api 요청에 오류가 있는 경우
            if time.time() - start_time >= 30:
                return 1
            time.sleep(3)
            r = requests.get(url)
        timeline = {"gameId":match_id, "timeline_data":r.json()}
        timelines.append(timeline)
    result['outlines'] = outlines
    result['matchinfos'] = matchinfos
    result['timelines'] = timelines
    return result # 5matches