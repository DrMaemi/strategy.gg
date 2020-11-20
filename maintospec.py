import pandas as pd
import requests, time
import firebase_admin
from firebase_admin import credentials
from firebase_admin import db
cred = credentials.Certificate("strategygg-f3884-firebase-adminsdk-l4cvw-481c873e10.json")
firebase_admin.initialize_app(cred,{
    "databaseURL" : "https://strategygg-f3884.firebaseio.com/"
})

def getspec(info): # processing code
    #keysUserInfo = ["summoner_name", "profile_icon_id", "tier", "league_point"]
    #keys5matches = ["team", "win", "champion_id", "level", "spell_id", "kill", "death", "assist","avg"\
    #                , "lane", "score", "duration", "num_of_feedback"]
    summoner_name = info['userinfo']['name']
    userspec = {
        "summoner_name":summoner_name,
        "profile_icon_id":info['userinfo']['profileIconId'],
        "tier":info['leagueinfo'][0]['tier'],
        "rank":info['leagueinfo'][0]['rank'],
        "league_point":info['leagueinfo'][0]['leaguePoints']
    }
    matchspecs = []
    outlines = info['5matches']['outlines']
    matchinfos = info['5matches']['matchinfos']
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
        team_score = "{}:{}".format(blueKills, redKills)
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
            "duration":matchinfo['gameDuration'],
            "feedbacks":[0, 0] # [# positives, # negatives]
        }
        matchspecs.append(matchspec)
    spec = {
        "userspec":userspec, # json
        "matchspecs":matchspecs # list<json>
    }
    return spec

def getinfo(summoner_name, api_key):
    info = {}
    url = 'https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/'\
            + summoner_name + '?api_key=' + api_key
    r = requests.get(url)
    start_time = time.time()
    if r.status_code == 404: # 소환사 이름이 존재하지 않는 경우
        return False
    while r.status_code != 200: # api 요청에 오류가 있는 경우
        if time.time() - start_time >= 30:
            return False
        time.sleep(3)
        r = requests.get(url)
    info['userinfo'] = r.json()
    summoner_id = r.json()['id']
    account_id = r.json()['accountId']
    info['leagueinfo'] = getleagueinfo(summoner_id, api_key)
    info['5matches'] = get5matches(account_id, api_key)
    return info
    
def getleagueinfo(summoner_id, api_key):
    url = "https://kr.api.riotgames.com/lol/league/v4/entries/by-summoner/"\
            + summoner_id + "?api_key=" + api_key
    r = requests.get(url)
    while r.status_code != 200: # api 요청에 오류가 있는 경우
        if time.time() - start_time >= 30:
            return False
        time.sleep(3)
        r = requests.get(url)
    return r.json()
    
def get5matches(account_id, api_key):
    result = {}
    url = 'https://kr.api.riotgames.com/lol/match/v4/matchlists/by-account/'\
            + account_id + '?queue=420&season=13&endIndex=5' + '&api_key=' + api_key
    r = requests.get(url)
    while r.status_code != 200: # api 요청에 오류가 있는 경우
        if time.time() - start_time >= 30:
            return False
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
        while r.status_code != 200: # api 요청에 오류가 있는 경우
            if time.time() - start_time >= 30:
                return False
            time.sleep(3)
            r = requests.get(url)
        matchinfos.append(r.json())
        # 시간대별 데이터 얻기
        url = "https://kr.api.riotgames.com/lol/match/v4/timelines/by-match/"\
                + str(match_id) + "?api_key=" + api_key
        r = requests.get(url)
        while r.status_code != 200: # api 요청에 오류가 있는 경우
            if time.time() - start_time >= 30:
                return False
            time.sleep(3)
            r = requests.get(url)
        timeline = {"gameId":match_id, "timeline":r.json()}
        timelines.append(timeline)
    result['outlines'] = outlines
    result['matchinfos'] = matchinfos
    result['timelines'] = timelines
    return result # 5matches