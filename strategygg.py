import json
from flask import Flask, request, jsonify, Response
from flask_cors import CORS
from functools import wraps
import maintospec

app = Flask(__name__)
CORS(app)
#app.config['JSON_AS_ASCII'] = False

host_addr = "0.0.0.0"
api_key = "RGAPI-c504edf4-117f-42f6-ab0b-e13fc7ecf865"
# Expires: Fri, Nov 20th, 2020 @ 6:03pm (PT). 11월 21일 11:03까지

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

@app.route("/specpage/<summoner_name>")
@as_json
def specpage(summoner_name):
    info = maintospec.getinfo(summoner_name, api_key)
    spec = maintospec.getspec(info)
    return spec

if __name__ == "__main__":
    app.run()