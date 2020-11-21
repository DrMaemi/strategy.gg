import numpy as np
import pandas as pd
import sys
import tensorflow as tf
from keras.models import Sequential
from keras.layers import GRU, Activation, Dense
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import accuracy_score
from tensorflow.keras.models import load_model

import json, sys
from flask import Flask, request, jsonify, Response
from flask_cors import CORS
from functools import wraps
import maintospec

app = Flask(__name__)
CORS(app)
#app.config['JSON_AS_ASCII'] = False
mod = sys.modules[__name__]
"""
tiers = ["GOLD", "PLATINUM", "DIAMOND"]
# load models
for tier in tiers:
    for tl in range(2, 51):
        setattr(mod, "{}RNN{}".format(tier, tl),load_model("RNN Classifiers/{0}/{0}{1}".format(tier, tl)))
        print("{}RNN{} has been loaded".format(tier, tl))
print("All model has been loaded !")
"""


host_addr = "0.0.0.0"
api_key = "RGAPI-654e6569-1095-4fa6-b858-0666d96c5342"
# 11월 22일 11:19 까지
# RGAPI-10aa0fac-4046-4ed9-a1e4-43255599a53f 11월 22일 11:21 까지
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

@app.route("/specpage/", methods=['GET'])
@as_json
def specpage():
    summoner_name = request.args.get("name")
    models = 0
    summoner_name = summoner_name.replace(" ","")
    summoner_name = summoner_name.replace("+","")
    summoner_name = summoner_name.replace("%20","")
    summoner_name = summoner_name.lower()
    info = maintospec.getinfo(summoner_name, api_key)
    spec = maintospec.getspec(info, models)
    return spec

@app.route("/modeltest")
def modeltest():
    #print(eval("{}RNN{}".format("GOLD", 15)).summary())
    #print(eval("{}RNN{}".format("PLATINUM", 15)).summary())
    #print(eval("{}RNN{}".format("DIAMOND", 15)).summary())
    return "True"

if __name__ == "__main__":
    app.run(host_addr, port=5000, threaded=True)