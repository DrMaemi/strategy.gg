  
import React from 'react';
import OtherGnb from './../components/OtherGnb.js';
import Summoner from './../components/Summoner.js';
import Game from '../components/Game';


const SummonerDetailPage = ({ location : {state : {spec : {data}}}}) =>{
    
    console.log(data);
    return(
        <div className="container">
            <OtherGnb/>
            <div>
                <Summoner info = {data.userspec}/>
                <Game info = {data.matchspecs[0]}/>
                <Game info = {data.matchspecs[1]}/>
                <Game info = {data.matchspecs[2]}/>
                <Game info = {data.matchspecs[3]}/>
                <Game info = {data.matchspecs[4]}/>

            </div>
          
        </div>
    );


}
export default SummonerDetailPage;