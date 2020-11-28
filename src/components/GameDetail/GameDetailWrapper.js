import React, { useState } from 'react';
import RibbonMenu from './RibbonMenu'
import GoldChart from './GoldChart'
import WinRateChart from './WinRateChart'

const GameDetailWarpper = (props) =>{
    console.log(props.info);
    return(
        <div className>
            <GoldChart data = {props.info}/>
            <WinRateChart />
            <RibbonMenu />
        </div>
    );

}
export default GameDetailWarpper;