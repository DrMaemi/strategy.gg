import pandas as pd
import numpy as np
import requests, time, sys
import firebase_admin
from firebase_admin import credentials
from firebase_admin import db
from preprocessfordb import processString
from sklearn.preprocessing import StandardScaler

"""
import tensorflow as tf
from tensorflow.keras.models import load_model
from keras.models import Sequential
from keras.layers import GRU, Activation, Dense
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import accuracy_score
"""

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