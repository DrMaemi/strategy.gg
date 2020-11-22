import React from 'react';
import GnbMoLogo from '../../img/ModelButton.png';
import {Link} from 'react-router-dom';
function GnbModelLogo(){
    return(
        <Link to='./ModelPage'>
        <img src={GnbMoLogo } alt="ModelLogo"/>
        </Link>
    );
}

export default GnbModelLogo;