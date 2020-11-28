import React, { useState } from 'react';
import RibbonMenu from './RibbonMenu'
import GoldChart from './GoldChart'
import WinRateChart from './WinRateChart'

const GameDetailWarpper = ({info}) =>{
    /*console.log("GameDetailWarpper에서 받은정보");
    console.log(info);*/
    //이부분 두번 api 호출
    return(
        <div className>
            <GoldChart gold = {info.gold_differences}/> 
            <WinRateChart rate = {info.win_rates}/>
            <RibbonMenu />
        </div>
    );

}
export default GameDetailWarpper;