import React, { useState } from 'react'
import FeedbackBox from './FeedbackBox'
import StrategyBox from './StrategyBox'
import './BoxContainers.css'
const BoxContainers = (props) =>{
    
    return(
        <div className = "BoxContainer">
            <FeedbackBox 
            time = {props.time} 
            delta = {props.feedback.delta}
            feedback = {props.feedback.feedback}
            win_rate = {props.feedback.win_rate}/>
            <StrategyBox startegy={props.feedback.strategies}/>
        </div>
    );
}
export default BoxContainers;