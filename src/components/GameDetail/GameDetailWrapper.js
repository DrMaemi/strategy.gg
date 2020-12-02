import React, { useState } from 'react';
import RibbonMenu from '../Ribbon/RibbonMenu'
import GoldChart from './GoldChart'
import WinRateChart from './WinRateChart'
<<<<<<< HEAD
import './GameDetailWrapper.css'
const GameDetailWrapper = ({info}) =>{
    
=======


const GameDetailWarpper = ({info}) =>{
    console.log("GameDetailWarpper에서 받은정보");
    console.log(info);
    //이부분 두번 api 호출
>>>>>>> 8cd139166f6f5957540699ef7785e7a28ba034f6
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
<<<<<<< HEAD
            </div>

=======
            
>>>>>>> 8cd139166f6f5957540699ef7785e7a28ba034f6
        </div>
    );

}
export default GameDetailWrapper;