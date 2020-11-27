import pandas as pd
import numpy as np
import processdb as db
import phaseanalysis as pa
from refinedata import Metadata

def getfeedback(summoner_name, game_id):
    timelinespec = db.load_timelinespec(summoner_name, game_id)
    refined_timeline_data = timelinespec['refined_timeline_data']
    feedback_points = timelinespec['feedback_points']
    points = list(map(int, feedback_points.keys()))
    try:
        feedback = feedback_points[str(points[0])]['feedback']
        return timelinespec
    except: pass
    team = timelinespec['team_belongs_to']
    tier = timelinespec['tier']
    diff_columns = Metadata().diff_columns
    df = pd.DataFrame()
    for tldata in refined_timeline_data:
        df_row = pd.DataFrame([tldata], columns=diff_columns)
        df = pd.concat([df, df_row])
    for point in points: # npArr[k] = k+1분의 상황 데이터
        # npArr[point]: (point+1)분의 상황
        # deltaFeatures는 (point+1)분 상황 - point분 상황 차이
        deltaFeatures = df.iloc[point]-df.iloc[point-1]
        if team == 1: # red team
            deltaFeatures = pd.Series(map(lambda x:-x, deltaFeatures), index=diff_columns)
        delta = feedback_points[str(point)]['delta']
        if point < 11: # lane phase, 1 ~ 10 minute
            feedback = pa.lanephase_analysis(delta, deltaFeatures)
            db.store_feedback(summoner_name, game_id, point, feedback)
        elif point < 21: # transition phase, 11 ~ 20 minute
            feedback = pa.transphase_analysis(point, delta, deltaFeatures)
        else:
            feedback = pa.tfphase_analysis(delta, deltaFeatures)
        db.store_feedback(summoner_name, game_id, point, feedback)
        feedback_points[str(point)]['feedback'] = feedback
    timelinespec['feedback_points'] = feedback_points
    return timelinespec