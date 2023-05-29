import React from 'react';
import GnbStrategyLogo from './common/GnbStrategyLogo.js';
import GnbModelLogo from './common/GnbModelLogo.js';
import './MainGnb.css';

function MainGnb(){
    return <div className="Topbar">
        <GnbStrategyLogo/>
        <GnbModelLogo/>

    </div>
}

export default MainGnb;