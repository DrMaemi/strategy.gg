import React, {useState} from 'react';
import './Summoner.css'
import ProfileIocn from '../img/TempProfileicon.png'
import Tier from '../img/TempTier.png'
import  "./../firebase"
import { storage } from './../firebase';

const Summoner = (props) => {
    console.log(storage.ref().bucket);
    const profileimg = storage.ref().child('0.png').getDownloadURL();
    const [img, setImg] = useState(null);
    profileimg.then(resolve => {
        console.log(resolve);
        setImg(resolve);
    });
    return(
        <div className="ProfileContainer">
            <img src =  {img} alt="Profileicon" className = "ProfileIcon"/> 
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