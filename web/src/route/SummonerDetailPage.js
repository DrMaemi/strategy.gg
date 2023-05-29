  
import React from 'react';
import OtherGnb from './../components/OtherGnb.js';
import Summoner from './../components/Summoner.js';
import Game from '../components/Game';


const SummonerDetailPage = ({ location : {state : {spec : {data}}}}) =>{
  
    return(
        <div className="SummonerDetailPageContainer">
            <OtherGnb/>
            <div className="Boxs">
                <Summoner info = {data}/>
            </div>
        </div>
    );


}
export default SummonerDetailPage;