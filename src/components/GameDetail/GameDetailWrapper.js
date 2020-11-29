import React, { useState } from 'react';
import RibbonMenu from './RibbonMenu'
import GoldChart from './GoldChart'
import WinRateChart from './WinRateChart'
import './GameDetailWrapper'
const GameDetailWrapper = ({info}) =>{
    
    return(
        <div className>
            <GoldChart gold = {info.gold_differences}/> 
            <WinRateChart rate = {info.win_rates}/>
            <RibbonMenu data={info}/>
        </div>
    );

}
export default GameDetailWrapper;