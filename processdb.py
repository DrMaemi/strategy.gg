import firebase_admin
from firebase_admin import credentials
from firebase_admin import db
cred = credentials.Certificate("strategygg-f3884-firebase-adminsdk-l4cvw-481c873e10.json")
firebase_admin.initialize_app(cred,{
    "databaseURL" : "https://strategygg-f3884.firebaseio.com/"
})

def store_feedback(summoner_name, game_id, point, feedback):
    db_path = "Analyses/{}/{}/timelinespec/feedback_points/{}"
    ref = db.reference(db_path.format(summoner_name, game_id, point))
    ref.update({"feedback":feedback})

def store_timelinespec(summoner_name, game_id, timelinespec):
    ref = db.reference("Analyses/{}/{}".format(summoner_name, game_id))
    ref.update({"timelinespec":timelinespec})

def load_timelinespec(summoner_name, game_id):
    ref = db.reference("Analyses/{}/{}".format(summoner_name, game_id))
    timelinespec = ref.child("timelinespec").get()
    return timelinespec

def store_spec(summoner_name, spec):
    ref = db.reference("Specs/"+summoner_name)
    ref.update(spec)

def load_spec(summoner_name):
    ref = db.reference("Specs/"+summoner_name)
    spec = ref.get()
    return spec