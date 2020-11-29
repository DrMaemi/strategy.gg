import React, { useState } from 'react';
import RibbonMenu from './RibbonMenu'
import GoldChart from './GoldChart'
import WinRateChart from './WinRateChart'
import './GameDetailWrapper'
const GameDetailWrapper = ({info}) =>{
    
    return(
        <div className = "Wrapper">
            <GoldChart gold = {info.gold_differences} className = "Chart"/> 
            <WinRateChart rate = {info.win_rates} className = "Chart"/>
            <RibbonMenu feedback={info.feedback_points}/>
        </div>
    );

}
export default GameDetailWrapper;