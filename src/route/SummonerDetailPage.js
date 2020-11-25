import React,{useState} from 'react';
import { Route } from 'react-router-dom';
import OtherGnb from './../components/OtherGnb.js';
import Summoner from './../components/Summoner.js';
import axios from "axios"; 
const SummonerDetailPage = ({ location : {state : {spec : {data}}}}) =>{

    console.log(data);
    return(
        <div className="container">
            <OtherGnb/>
            <div>
                `소환사 이름은 : ${data.userspec.summoner_name}`
            </div>
          
        </div>
    );


}
export default SummonerDetailPage;