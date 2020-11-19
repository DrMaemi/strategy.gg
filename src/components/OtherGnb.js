import React from 'react';
import GnbStrategyLogo from './common/GnbStrategyLogo.js';
import GnbModelLogo from './common/GnbModelLogo.js';
import './MainSummonerInput.css';
import './OtherGnb.css'
import MainSummonerInput from './MainSummonerInput.js';

function OtherGnb(){
    return <div className="Topbar">
     
          <GnbStrategyLogo/>
          <GnbModelLogo/>

        <span className = "otherInput">
         <MainSummonerInput/>
         </span>
         

    </div>
}

export default OtherGnb;