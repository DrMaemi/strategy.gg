import React from 'react';
import './GnbStrategyLogo.css';
import GnbStLogo from '../../img/Logo.png';
import {Link} from 'react-router-dom';

function GnbStrategyLogo(){
    return(
        <Link to="/home">
        <img src={GnbStLogo}/>
       </Link>
    );
}
export default GnbStrategyLogo;