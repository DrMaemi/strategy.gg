import React from 'react';
import OtherGnb from './../components/OtherGnb.js'
import './MainPage.css';
import './ExecptPage.css';
import Question from './../img/QuestionMark.png'

function ExceptPage(){
    return(
        <div className="container" >
            <OtherGnb/>
            <div className = "NotFoundMsg">Summoner not found</div>
            <div className = "Again">Please try again</div>
            
            
        </div>
    );
}

export default ExceptPage;