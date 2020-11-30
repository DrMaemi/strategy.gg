import React from 'react';
import OtherGnb from './../components/OtherGnb.js'
import './SummonerDetailPage.css';
import './ExecptPage.css';

function ExceptPage(){
    return(
        <div className="SummonerDetailPageContainer" >
            <OtherGnb/>
            <div className = "NotFoundMsg">Summoner not found</div>
            <div className = "Again">Please try again</div>
            
            
        </div>
    );
}

export default ExceptPage;