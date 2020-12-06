import firebase_admin
from firebase_admin import credentials
from firebase_admin import db
cred = credentials.Certificate("strategygg-f3884-firebase-adminsdk-l4cvw-481c873e10.json")
firebase_admin.initialize_app(cred,{
    "databaseURL" : "https://strategygg-f3884.firebaseio.com/"
})

def load_playstyle(summoner_name, game_id):
    db_path = "Playstyles/{}/{}"
    ref = db.reference(db_path.format(summoner_name, game_id))
    playstyle = ref.get()
    return playstyle

def store_playstyle(summoner_name, game_id, playstyle):
    db_path = "Playstyles/{}"
    ref = db.reference(db_path.format(summoner_name))
    ref.update({str(game_id):playstyle})

def load_ps_json(summoner_name, game_id):
    db_path = "ps_jsons/{}/{}"
    ref = db.reference(db_path.format(summoner_name, game_id))
    ps_json = ref.get()
    return ps_json

def store_ps_json(summoner_name, game_id, ps_json):
    db_path = "ps_jsons/{}"
    ref = db.reference(db_path.format(summoner_name))
    ref.update({str(game_id):ps_json})

def bringStatistics(tier, point, team):
    db_path = "Statistics/{}/{}/{}"
    ref = db.reference(db_path.format(tier, point, team))
    statistics = ref.get()
    return statistics

def store_strategies(summoner_name, game_id, point, strategies):
    db_path = "Analyses/{}/{}/timelinespec/feedback_points/{}"
    ref = db.reference(db_path.format(summoner_name, game_id, point))
    ref.update({"strategies":strategies})

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

def load_matchspecs(summoner_name):
    ref = db.reference("Specs/{}/matchspecs".format(summoner_name))
    matchspecs = ref.get()
    return matchspecs

def store_spec(summoner_name, spec):
    ref = db.reference("Specs/"+summoner_name)
    ref.update(spec)

def load_spec(summoner_name):
    ref = db.reference("Specs/"+summoner_name)
    spec = ref.get()
    return spec

def store_timeline_dataframe(game_id, timeline_df):
    timeline_json = eval(timeline_df.to_json(orient="records"))
    ref = db.reference("Timeline DataFrames")
    ref.update({str(game_id):timeline_json})

def load_timeline_dataframe(game_id):
    ref = db.reference("Timeline DataFrames/{}".format(game_id))
    timeline_json = ref.get()
    return timeline_json