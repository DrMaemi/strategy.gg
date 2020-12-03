import pandas as pd
import numpy as np
from sklearn.preprocessing import scale

import processforps as ps
import processdb as db
import feedbackanalysis as fba
import simulation as simul
from refinedata import Metadata

def getplaystyle(summoner_name, game_id, psModels):
    playstyle = db.load_playstyle(summoner_name, game_id)
    if playstyle is not None:
        return playstyle
    PlayStyle = ps.PlayStyle()
    ps_json = db.load_ps_json(summoner_name, game_id)
    tier = ps_json['tier']
    tier = "DIAMOND"
    lane = ps_json['lane']
    data = ps_json['ps_json']
    targetData = []
    for value in data[0].values():
        targetData.append(value)
    ps_df = pd.DataFrame([targetData], columns=PlayStyle.ps_features)
    targetModel = psModels[tier][psModels["lanes"].index(lane)]
    # scale code #
    scaleData = pd.read_csv("Playstyle Origin Data/{0}/{0}{1}.csv".format(tier, lane))
    scaleData = pd.concat([scaleData, ps_df])
    scaleData = scaleData.reset_index(drop=True)
    scaleData = scale(scaleData)
    data = [scaleData[len(scaleData)-1]]
    classResult = targetModel.predict(np.array(data))
    playstyle = eval("ps.PlayStyle().{}{}PS{}".format(tier, lane, classResult[0]))
    #db.store_playstyle(summoner_name, game_id, playstyle)
    return playstyle

def getstrategies(tier, point, team_belongs_to, timeline_df, refined_timeline_df, Models):
    modelTiers = Models['tiers']
    try: tierIdx = modelTiers.index(tier)
    except ValueError:
        if tier == "GRANDMASTER":
            tierIdx, tier = 4, "CHALLENGER"
        else:
            tierIdx, tier = 0, "GOLD"
    strategies = []
    while True:
        try:
            modelTier = modelTiers[tierIdx]
        except IndexError:
            break
        models = Models[modelTier] # List<tf.model>
        sliced_df = refined_timeline_df[:point]
        targetModel = models[point-1]
        # Simulationing code
        if point < 5:
            strategy = simul.before5(modelTier, point, team_belongs_to, timeline_df, sliced_df, targetModel)
        elif point < 8:
            strategy = simul.before8(modelTier, point, team_belongs_to, timeline_df, sliced_df, targetModel)
        elif point < 14:
            strategy = simul.before14(modelTier, point, team_belongs_to, timeline_df, sliced_df, targetModel)
        elif point < 20:
            strategy = simul.before20(modelTier, point, team_belongs_to, timeline_df, sliced_df, targetModel)
        else:
            strategy = simul.after20(modelTier, point, team_belongs_to, timeline_df, sliced_df, targetModel)
        e_strategy = {
            "model_tier":modelTier,
            "strategy":strategy
        }
        strategies.append(e_strategy)
        tierIdx += 1 # 상위 티어로 넘어간다
    return strategies

def getanalysis(summoner_name, game_id, Models):
    timelinespec = db.load_timelinespec(summoner_name, game_id)
    feedback_points = timelinespec['feedback_points']
    if feedback_points == 0: # 게임 진행x. 피드백할 것이 없음
        return timelinespec
    points = list(map(int, feedback_points.keys()))
    try:
        for point in points:
            feedback = feedback_points[str(point)]['feedback']
        return timelinespec
    except: pass
    team_belongs_to = timelinespec['team_belongs_to']
    tier = timelinespec['tier']
    metadata = Metadata()
    diff_columns = metadata.diff_columns
    df = pd.DataFrame()
    refined_timeline_data = timelinespec['refined_timeline_data']
    for tldata in refined_timeline_data:
        df_row = pd.DataFrame([tldata], columns=diff_columns)
        df = pd.concat([df, df_row])
    # df = refined_timeline_df has been made
    timeline_json = db.load_timeline_dataframe(game_id)
    raw_columns = metadata.raw_columns
    timeline_df = pd.DataFrame()
    for tldata in timeline_json:
        df_row = pd.DataFrame([tldata], columns=raw_columns)
        timeline_df = pd.concat([timeline_df, df_row])
    # timeline_df has been made
    for point in points: # npArr[k] = k+1분의 상황 데이터
        # 원인(피드백) 조사
        # npArr[point]: (point+1)분의 상황
        # deltaFeatures는 (point+1)분 상황 - point분 상황 차이
        deltaFeatures = df.iloc[point]-df.iloc[point-1]
        if team_belongs_to == 1: # red team
            deltaFeatures = pd.Series(map(lambda x:-x, deltaFeatures), index=diff_columns)
        delta = feedback_points[str(point)]['delta']
        win_rate = feedback_points[str(point)]['win_rate']
        if point < 11: # lane phase, 1 ~ 10 minute
            feedback = fba.lanephase_analysis(point, team_belongs_to, win_rate, delta, deltaFeatures, timeline_df)
        elif point < 21: # transition phase, 11 ~ 20 minute
            feedback = fba.transphase_analysis(point, team_belongs_to, win_rate, delta, deltaFeatures, timeline_df)
        else:
            feedback = fba.tfphase_analysis(point, team_belongs_to, win_rate, delta, deltaFeatures, timeline_df)
        # 타 티어 전략 추천
        # strategies:List<e_strategy>, e_strategy:Json(modelTier:String, strategy:List)
        strategies = getstrategies(tier, point, team_belongs_to, timeline_df, df, Models)
        db.store_feedback(summoner_name, game_id, point, feedback)
        db.store_strategies(summoner_name, game_id, point, strategies)
        feedback_points[str(point)]['feedback'] = feedback
        feedback_points[str(point)]['strategies'] = strategies
    timelinespec['feedback_points'] = feedback_points
    return timelinespec