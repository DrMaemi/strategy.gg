import numpy as np
import pandas as pd

from tensorflow.keras.models import load_model
from preprocessfordb import processString
from sklearn.preprocessing import StandardScaler
from sklearn.externals import joblib

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
# host_addr = 
# api_key = 

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
# load RNN models
start_time = time.time()
for tier in tiers:
    for tl in range(2, 46):
        setattr(mod, "{}RNN{}".format(tier, tl), load_model("RNN Classifiers/{0}/{0}{1}".format(tier, tl)))
        #print(eval("{}RNN{}".format(tier, tl)).summary())
        eval("Models['{}']".format(tier)).append(eval("{}RNN{}".format(tier, tl)))
        print("{}RNN{} has been loaded".format(tier, tl))
print("All RNN models have been loaded !")
print("Wait time: {} second(s)".format(time.time()-start_time))

psModels = {
    "tiers":tiers,
    "lanes":["TOP", "JUNGLE", "MID", "BOTTOM", "SUPPORTER"],
    "GOLD":[],
    "PLATINUM":[],
    "DIAMOND":[],
    "MASTER":[],
    "CHALLENGER":[]
}
# load playstyle clustering models
start_time = time.time()
for tier in psModels['tiers']:
    for lane in psModels['lanes']:
        setattr(mod, "PS_{}{}".format(tier, lane), joblib.load("Playstyle Classifiers/{0}/{0}{1}.pkl".format(tier, lane)))
        eval("psModels['{}']".format(tier)).append(eval("PS_{}{}".format(tier, lane)))
        print(eval("PS_{}{}".format(tier,lane)))
        print("PS_{}{} has been loaded".format(tier, lane))
print("All PS models have been loaded !")
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
            for matchspec in spec['matchspecs']:
                try: del matchspec['whenGamePlayed']
                except: pass
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

@app.route("/playstyle/")
@as_json
def playstylepage():
    start_time = time.time()
    summoner_name = request.args.get("name")
    game_id = request.args.get("game_id")
    summoner_name = processString(summoner_name)
    playstyle = spectoanalysis.getplaystyle(summoner_name, game_id, psModels)
    print("Time taken: {} second(s)".format(time.time()-start_time))
    return playstyle

@app.route("/refresh/")
@as_json
def refresh():
    start_time = time.time()
    summoner_name = request.args.get("name")
    summoner_name = processString(summoner_name)
    info = maintospec.getinfo(summoner_name, api_key)
    spec = maintospec.getspec(info, Models)
    if spec == 0: return abort(406)
    elif spec == 1: return abort(408)
    print("Time taken: {} second(s)".format(time.time()-start_time))
    return spec

@app.route("/key_test")
def key_test():
    return api_key

@app.route("/regenerate_key/<new_key>")
def regenerate_key(new_key):
    global api_key
    api_key = new_key
    return "True"

if __name__ == "__main__":
    context = ("APICertificates/certificate.crt", "APICertificates/private.key")
    app.run(host_addr, port=5000, threaded=True, ssl_context=context)
    #app.run(host_addr, port=5000, threaded=True)
    #app.run()