import React, { useState } from 'react'
import FeedbackBox from './FeedbackBox'
import StrategyBox from './StrategyBox'
import './BoxContainers.css'
import ComboboxStrategy from './ComboBox'
const BoxContainers = (props) =>{
    console.log(props);
    return(
        <div className = "BoxContainer">
            <FeedbackBox 
            time = {props.time} 
            delta = {props.feedback.delta}
            feedback = {props.feedback.feedback}
            win_rate = {props.feedback.win_rate}/>
            {/* <StrategyBox strategy={props.feedback.strategies}/> */}
            
        </div>
    );
}
export default BoxContainers;