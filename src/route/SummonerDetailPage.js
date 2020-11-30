  
import React from 'react';
import OtherGnb from './../components/OtherGnb.js';
import Summoner from './../components/Summoner.js';
import Game from '../components/Game';
import './SummonerDetailPage.css'

const SummonerDetailPage = ({ location : {state : {spec : {data}}}}) =>{
    
    console.log(data);
    return(
        <div className="container">
            <OtherGnb/>
            <div className="Boxs">
                <Summoner info = {data.userspec}/>
                <Game info = {data.matchspecs[0]} summonerName = {data.userspec.summoner_name}/>
                <Game info = {data.matchspecs[1]} summonerName = {data.userspec.summoner_name}/>
                <Game info = {data.matchspecs[2]} summonerName = {data.userspec.summoner_name}/>
                <Game info = {data.matchspecs[3]} summonerName = {data.userspec.summoner_name}/>
                <Game info = {data.matchspecs[4]} summonerName = {data.userspec.summoner_name}/>
            </div>
          
        </div>
    );


}
export default SummonerDetailPage;