import React, { useState } from 'react';
import RibbonMenu from './RibbonMenu'
import GoldChart from './GoldChart'
import WinRateChart from './WinRateChart'

const GameDetailWarpper = (props) =>{
    return(
        <div className>
            <GoldChart data = {props.info.gold_differences}/>
            <WinRateChart />
            <RibbonMenu />
        </div>
    );

}
export default GameDetailWarpper;