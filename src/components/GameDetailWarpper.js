import React from 'react';
import  FiveMinuteInterval from './FiveMinuteInterval'
import ComboboxStrategy from './ComboBox'

const GameDetailWarpper = (props) =>{
    return(
        <div>

            <FiveMinuteInterval/>
            <ComboboxStrategy/>

        </div>
    );

}
export default GameDetailWarpper;