import React from 'react';
import './Summoner.css'
import ProfileIocn from '../img/TempProfileicon.png'
import Tier from '../img/TempTier.png'

function Summoner(props){
    
    return(
        <div className="ProfileContainer">
            <img src = {ProfileIocn} alt="Profileicon" className = "ProfileIcon"/> 
            <b className = "SummonerName">Hide On Bush</b>
            <button className = "UpdateButton">전적갱신</button>
                
            <img src = {Tier} alt="TierIcon" className = "TierIcon"/>
                
            <b className = "TierName">Master</b>
            <br></br>
            <b className = "LP">284LP</b>

        </div>
    );

}

export default Summoner;