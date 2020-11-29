import numpy as np
import pandas as pd

from tensorflow.keras.models import load_model
from preprocessfordb import processString
from sklearn.preprocessing import StandardScaler

import json, sys, time
from flask import Flask, request, jsonify, Response, abort
from flask_cors import CORS
from functools import wraps
from preprocessfordb import processString
import processdb as db
import maintospec
import spectoanalysis

app = Flask(__name__)
CORS(app)
host_addr = "61.99.75.232"
api_key = "RGAPI-0a267978-eeaa-4e67-8130-3059d88d6d7d"
# 라이엇 계정 29일 06:50
# RGAPI-9456207e-2a7b-45ce-8787-fdec75a7038e

mod = sys.modules[__name__]
tiers = ["GOLD", "PLATINUM", "DIAMOND", "MASTER", "CHALLENGER"]
#["GOLD", "PLATINUM", "DIAMOND", "MASTER", "CHALLENGER"]
Models = {
    "tiers":tiers,
    "GOLD":[],
    "PLATINUM":[],
    "DIAMOND":[],
    "MASTER":[],
    "CHALLENGER":[]
}
# load models
start_time = time.time()
for tier in tiers:
    for tl in range(2, 46):
        setattr(mod, "{}RNN{}".format(tier, tl), load_model("RNN Classifiers/{0}/{0}{1}".format(tier, tl)))
        #print(eval("{}RNN{}".format(tier, tl)).summary())
        eval("Models['{}']".format(tier)).append(eval("{}RNN{}".format(tier, tl)))
        print("{}RNN{} has been loaded".format(tier, tl))
print("All model has been loaded !")
print("Wait time: {} second(s)".format(time.time()-start_time))


def as_json(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        res = f(*args, **kwargs)
        res = json.dumps(res, ensure_ascii=False).encode('utf8')
        return Response(res, content_type='application/json; charset=utf-8')
    return decorated_function

@app.route("/")
def route():
    return "Strategy.gg 백엔드 서버에 오신 것을 환영합니다."

@app.route("/specpage/")
@as_json
def specpage():
    start_time = time.time()
    summoner_name = request.args.get("name") # ?name=<summoner_name>
    #print(type(summoner_name)) -> <class 'str'>
    summoner_name = processString(summoner_name)
    try:
        spec = db.load_spec(summoner_name)
        if spec is not None:
            return spec
    except ValueError:
        return abort(406)
    info = maintospec.getinfo(summoner_name, api_key)
    spec = maintospec.getspec(info, Models)
    if spec == 0: return abort(406)
    elif spec == 1: return abort(408)
    print("Time taken: {} second(s)".format(time.time()-start_time))
    return spec

@app.route("/analysis/")
@as_json
def analysispage():
    start_time = time.time()
    summoner_name = request.args.get("name")
    game_id = request.args.get("game_id")
    summoner_name = processString(summoner_name)
    timelinespec = spectoanalysis.getanalysis(summoner_name, game_id, Models)
    del timelinespec['refined_timeline_data']
    print("Time taken: {} second(s)".format(time.time()-start_time))
    return timelinespec

@app.route("/modeltest")
def modeltest():
    tier = request.args.get("tier") # ?tier=<summoner_name>
    modelTier = tier
    print("type(Models): {}".format(type(Models)))
    print("Models[modelTier][0].summary:")
    print(Models[modelTier][0].summary())
    #print("type(Models): {}".format(type(Models)))
    #print("Models['GOLD'][0].summary:")
    #print(Models['GOLD'][0].summary())
    return "True"

if __name__ == "__main__":
    app.run(host_addr, port=5000, threaded=True)
    #app.run()