import React from 'react';
import GnbMoLogo from '../../img/ModelButton.png';
import {Link} from 'react-router-dom';
import './GnbLogo.css';

function GnbModelLogo(){
    return(
        <Link to="/ModelPage">
        <img src={GnbMoLogo} className = "ModelLogo"/>
        </Link>
    );
}

export default GnbModelLogo;