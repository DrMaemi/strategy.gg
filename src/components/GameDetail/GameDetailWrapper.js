import React, { useState } from 'react';
import RibbonMenu from '../Ribbon/RibbonMenu'
import GoldChart from './GoldChart'
import WinRateChart from './WinRateChart'
import './GameDetailWrapper.css'

const GameDetailWrapper = (props) =>{
    console.log(props);
    return(
        <div className = "Wrapper">
            <div className = "title">
                골드 우위 그래프
            </div>
            <div className = "content">
            <GoldChart gold = {props.info.gold_differences} /> 
            </div>
            <div className = "title">
                승률 그래프
            </div>
            <div className = "content">
            <WinRateChart rate = {props.info.win_rates} className = "content"/>
            </div>
            <div className = "ribbon">
            <RibbonMenu feedback={props.info} playstyle={props.ps}/>
            </div>

        </div>
    );

}
export default GameDetailWrapper;