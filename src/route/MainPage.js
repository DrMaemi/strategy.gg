import React from 'react';
import MainGnb from './../components/MainGnb.js'
import './MainPage.css';
import MainLogo from './../img/MainLogo.png';
import MainSummonerInput from './../components/MainSummonerInput.js';
import {Link} from "react-router-dom";

function MainPage(){
    return(
     
          
            <div className="container" >
            <MainGnb/>
            
            <div className="center">
                <img src={MainLogo} className="centerLogo" alt="MainLogo"/>
                <MainSummonerInput/>
           
            </div>
        
            
        </div>
     
    );
}

export default MainPage;