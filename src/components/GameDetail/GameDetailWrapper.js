import React, { useState } from 'react';
import RibbonMenu from './RibbonMenu'
import GoldChart from './GoldChart'
import WinRateChart from './WinRateChart'
import './GameDetailWrapper.css'
const GameDetailWrapper = ({info}) =>{
    
    return(
        <div className = "Wrapper">
            <div className = "title">
                골드 우위 그래프
            </div>
            <div className = "content">
            <GoldChart gold = {info.gold_differences} /> 
            </div>
            <div className = "title">
                승률 그래프
            </div>
            <div className = "content">
            <WinRateChart rate = {info.win_rates} className = "content"/>
            </div>
            <div className = "ribbon">
            <RibbonMenu data={info}/>
            </div>

        </div>
    );

}
export default GameDetailWrapper;