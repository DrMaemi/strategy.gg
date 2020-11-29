import React, {useState} from 'react';
import './Summoner.css'
import {useHistory, useLocation} from 'react-router-dom';
import  "./../firebase"
import { storage } from './../firebase';
    

const Summoner = (props) => {
    const [Profileimg,setProfileimg] = useState(null);
    const [Tierimg,setTierimg] = useState(null);
   
    const league_point = props.info.league_point;
    const profile_icon_id = props.info.profile_icon_id;
    var rank = props.info.rank;
    const summoner_name = props.info.summoner_name;
    const tier = props.info.tier;
    
    const ProfileURL = storage.ref().child('ProfileIcon/'+String(profile_icon_id)+'.png').getDownloadURL();
    ProfileURL.then(resolve=>{
        setProfileimg(resolve);
    });
    const TierURL = storage.ref().child('Tier/'+String(tier)+'.png').getDownloadURL();
    TierURL.then(resolve=>{
        setTierimg(resolve);
    });

    
    if(tier === 'MASTER' || tier === 'CHALLENGER')
        rank= "";
    return(
        <div className="ProfileContainer">
            <img src =  {Profileimg} alt="Profileicon" className = "ProfileIcon"/> 
            <b className = "SummonerName">{summoner_name}</b>
            <button className = "UpdateButton">전적갱신</button>
                
            <img src = {Tierimg} alt="TierIcon" className = "TierIcon"/>

            <b className = "TierName">{tier} {rank}</b>
            
            <br></br>
            <b className = "LP">{league_point}LP</b>

        </div>
        
    );

}

export default Summoner;