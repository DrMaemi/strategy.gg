import React from 'react';
import './GnbStrategyLogo.css';
import GnbStLogo from '../../img/Logo.png';
import {Link} from 'react-router-dom';
function GnbStrategyLogo(){
    return(
        <Link to ='/MainPage'>
       <img src={GnbStLogo} alt="StLogo"/>
       </Link>
    );
}
export default GnbStrategyLogo;