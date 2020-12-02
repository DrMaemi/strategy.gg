import React, {useEffect, useState} from 'react';
import './Summoner.css'
import {useHistory, useLocation} from 'react-router-dom';
import  "./../firebase"
import { storage } from './../firebase';
import axios from 'axios';
import Game from './Game';
    

const Summoner = ({info}) => {
    console.log("info는");
    console.log(info);
    let isProfileURLOk = 0;
    let isTierURLOk =0;
   

    const [isRefetching, setIsRefetching] = useState(0);//패치중
    const [isRender, setIsRender]= useState(0);
    const [isLoading, setIsLoading]= useState(0);
    const [Profileimg,setProfileimg] = useState(null);
    const [Tierimg,setTierimg] = useState(null);
    console.log(isLoading);
    const [copyInfo,setCopyInfo] = useState(info);
   

    
   

    if(info.userspec.summoner_name !== copyInfo.userspec.summoner_name){
            
     
        setCopyInfo(info);
        setIsLoading(0);
    }
  
    
    useEffect(()=>{
        if(isLoading === 0){sameTime();}
        console.log("useEfffect!!");
    },[isLoading,isRefetching,isRender])

    const refetchInfo = async() =>{
        setIsRefetching(1);
        const {data : fetchInfo} = await axios.get(`http://61.99.75.232:5000/refresh/?name=${copyInfo.userspec.summoner_name}`);
    
        if(fetchInfo.userspec.summoner_name === copyInfo.userspec.summoner_name){
            console.log("전적갱신 끝!!");
            setIsRefetching(0);
        }
        setCopyInfo(fetchInfo);   
    }
    
    const sameTime = async() => {
        let ProfileURL,TierURL = 0;
        const profileURL =() =>{
            ProfileURL= storage.ref().child('ProfileIcon/'+String(copyInfo.userspec.profile_icon_id)+'.png').getDownloadURL();
        }
       
        const tierURL = () =>{
            TierURL= storage.ref().child('Tier/'+String(copyInfo.userspec.tier)+'.png').getDownloadURL();
        }
        let copyResolveProfile,copyResolveTier =0;
        try{
            await profileURL();
            console.log("URL받아옴")
            await ProfileURL.then(resolve=> {
                setProfileimg(resolve);
                console.log("프로필 받아옴")
                });
        }
        catch{console.log("프로필 오류")}
        

        console.log("ProfileURLTierURL w중간 임");
        try{
            await tierURL();
            await TierURL.then(resolve=>{
           
            setTierimg(resolve);
            
            });
        }
        catch{console.log("티어 오류");}
        
        console.log("sametime 끝")
        setIsLoading(1);
        
    }




    
    if(copyInfo.userspec.tier === 'MASTER' || copyInfo.userspec.tier === 'CHALLENGER')
        copyInfo.userspec.rank= "";

    if(isRefetching === 1){
        return(
            <div className="ProfileContainer">
                <img src =  {Profileimg} alt="Profileicon" className = "ProfileIcon"/> 
                <b className = "SummonerName">{copyInfo.userspec.summoner_name}</b>
                <button className = "UpdateButton refetching"></button>
                    
                <img src = {Tierimg} alt="TierIcon" className = "TierIcon"/>

                <div className = "tierNlp">
                    <b className = "TierName">{copyInfo.userspec.tier} {copyInfo.userspec.rank}</b>
                    <b className = "LP">{copyInfo.userspec.league_point}LP</b>
                </div>
    
            </div>
            
        );
    }
    else{
        if(isLoading === 1 ){

            if(info.userspec.summoner_name === copyInfo.userspec.summoner_name){
        return(
        
        
        <>
        {console.log("랜더링 됐냐???")}
        <div className="ProfileContainer">
            <img src =  {Profileimg} alt="Profileicon" className = "ProfileIcon"/> 
            <div className = "nameNbtn">
                <b className = "SummonerName">{copyInfo.userspec.summoner_name}</b>
                <button className = "UpdateButton" onClick={refetchInfo}>전적갱신</button>
            
            </div>
            <img src = {Tierimg} alt="TierIcon" className = "TierIcon"/>

            <b className = "TierName">{copyInfo.userspec.tier} {copyInfo.userspec.rank}</b>
            
            <div className = "tierNlp">
            <b className = "LP">{copyInfo.userspec.league_point}LP</b>
            </div>
        </div>
   
            <Game info = {copyInfo.matchspecs[0]} summonerName = {copyInfo.userspec.summoner_name}/>
            <Game info = {copyInfo.matchspecs[1]} summonerName = {copyInfo.userspec.summoner_name}/>
            <Game info = {copyInfo.matchspecs[2]} summonerName = {copyInfo.userspec.summoner_name}/>
            <Game info = {copyInfo.matchspecs[3]} summonerName = {copyInfo.userspec.summoner_name}/>
            <Game info = {copyInfo.matchspecs[4]} summonerName = {copyInfo.userspec.summoner_name}/>

        </>
            );
        }
        else{
            return <div>로딩중입니다!</div>
        }
        }


        else{
            return <div>로딩중입니다!</div>
        }
    }

}

export default Summoner;