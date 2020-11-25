import React from 'react';
import OtherGnb from './../components/OtherGnb.js'
import './MainPage.css';
import './ExecptPage.css';
import Question from './../img/QuestionMark.png'

function ExceptPage(){
    return(
        <div className="container" >
            <OtherGnb/>
            <div>
                <img src = {Question} alt="NoUser" className = "uestionImg"></img>
                <h1 className = "NotFoundMsg">Summoner not found</h1>
            </div>
        </div>
    );
}

export default ExceptPage;