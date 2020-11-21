import pandas as pd
import numpy as np
import requests, time
import firebase_admin
from refinedata import get_timeline_features, refine_timeline_df
from firebase_admin import credentials
from firebase_admin import db
from math import ceil
from sklearn.preprocessing import StandardScaler

cred = credentials.Certificate("strategygg-f3884-firebase-adminsdk-l4cvw-481c873e10.json")
firebase_admin.initialize_app(cred,{
    "databaseURL" : "https://strategygg-f3884.firebaseio.com/"
})

def getspec(info, models): # processing code, to provide userspec, matchspecs
    #keys of userspec = ["summoner_name", "profile_icon_id", "tier", "league_point"]
    #keys of matchspecs = ["team", "win", "champion_id", "level", "spell_id", "kill", "death", "assist","avg"\
    #                , "lane", "score", "duration", "num_of_feedback"]
    if info == 0: return 0 # 존재하지 않는 소환사입니다.
    elif info == 1: return 1 # 정보를 받아오는데 너무 오래 걸립니다.
    summoner_name = info['userinfo']['name']
    ref = db.reference("Users/{}".format(summoner_name))
    spec = ref.child("spec").get()
    if spec is not None: # spec 정보가 존재한다면
        return spec # db에 있는 spec 정보를 반환합니다.
    userspec = {
        "summoner_name":summoner_name,
        "profile_icon_id":info['userinfo']['profileIconId'],
        "tier":info['leagueinfo'][0]['tier'],
        "rank":info['leagueinfo'][0]['rank'],
        "league_point":info['leagueinfo'][0]['leaguePoints']
    }
    matchspecs, timelinespecs = [], []
    outlines = info['5matches']['outlines']
    matchinfos = info['5matches']['matchinfos']
    timelines = info['5matches']['timelines'] # list of json: gameId, timeline_data
    for idx, outline in enumerate(outlines['matches']):
        matchinfo = matchinfos[idx]
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
        lane = outline['lane']
        if lane == "NONE":
            if spell1id == 11 or spell2id == 11:
                lane = "JUNGLE"
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
        for idx, participant in enumerate(matchinfo['participants']):
            if idx < 5: # 0 to 4 : blue team participants
                blueKills += participant['stats']['kills']
            else: # 5 to 9 : red team participants
                redKills += participant['stats']['kills']
        if team == 0: # 블루팀이면
            team_score = "{}:{}".format(blueKills, redKills)
        elif team == 1: # 레드팀이면
            team_score = "{}:{}".format(redKills, blueKills)
        duration = matchinfo['gameDuration']
        timeline_data = timelines[idx]['timeline_data'] # 해당 게임의 시간대 데이터
        endtime = ceil(duration/60) # 해당 게임이 끝난 시간(분)
        timeline_df = pd.DataFrame() # 가공한 시간대 데이터를 넣을 리스트 준비, 리스트의 최종 shape = (진행시간, #features)
        for time in range(1, endtime+1):
            timeline_features = get_timeline_features(timeline_data, time*60000)
            timeline_df = pd.concat([timeline_df, timeline_features])
        refined_timeline_df = refine_timeline_df(timeline_df)
        gold_differences = refined_timeline_df['total_gold'].tolist()
        refined_timeline_data = np.array(refined_timeline_df) # Numpy array
        win_rates = [0.5] # at 1 minute, win rate is 50%
        """ # 모델을 이용해서 기대승률 그래프 생성
        scaler = StandardScaler()
        for tl in range(2, endtime+1):
            if tl > 40: break
            input_data = refined_timeline_data[:tl, :]
            input_data = scaler.fit_transform(input_data)
            timestamps, input_dim = input_data.shape
            input_data = input_data.reshape(1, timestamps, input_dim)
            if team == 0: # 블루팀이 이길 확률 계산
                win_rate = models[tl-2].predict(input_data)[0][0] # 2분 모델부터 0번 인덱스에 들어가 있다.
            elif team == 1: # 레드팀이 이길 확률 계산
                win_rate = models[tl-2].predict(input_data)[0][1]
            win_rates.append(win_rate)
        """ # 피드백 개수도 알려줘야 하는데.
        if team == 1: # 레드팀 - 블루팀의 골드 차이로 계산
            for idx, val in enumerate(gold_differences):
                gold_differences[idx] = -val

        timelinespec = {
            #"refined_timeline_data":refined_timeline_data,
            "gold_differences":gold_differences,
            "win_rates":win_rates
        }
        matchspec = {
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
            "team_score":team_score,
            "duration":duration,
            "feedbacks":[0, 0] # [# positives, # negatives]
        }
        matchspecs.append(matchspec)
        timelinespecs.append(timelinespec)
    spec = {
        "userspec":userspec, # json
        "matchspecs":matchspecs, # list<json>
        #"timelinespecs":timelinespecs # list<json>
    }
    print("is done..?")
    ref.child("spec").update(spec)
    return spec

def getinfo(summoner_name, api_key):
    ref = db.reference("Users")
    info = ref.child(summoner_name).child("info").get()
    if info is not None:
        return info
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
    to_db = {
        "info":info,
    }
    ref = db.reference("Users/{}".format(summoner_name))
    ref.update(to_db)
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