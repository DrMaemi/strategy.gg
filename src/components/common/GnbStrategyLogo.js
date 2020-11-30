import React from 'react';
import './GnbLogo.css';
import GnbStLogo from '../../img/Logo.png';
import {Link} from 'react-router-dom';

function GnbStrategyLogo(){
    return(
        <Link to="/MainPage">
        <img src={GnbStLogo} className = "Logo"/>
       </Link>
    );
}
export default GnbStrategyLogo;