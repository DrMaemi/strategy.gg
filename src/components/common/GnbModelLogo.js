import React from 'react';
import GnbMoLogo from '../../img/ModelButton.png';
import {Link} from 'react-router-dom';

function GnbModelLogo(){
    return(
        <Link to="/model">
        <img src={GnbMoLogo}/>
        </Link>
    );
}

export default GnbModelLogo;