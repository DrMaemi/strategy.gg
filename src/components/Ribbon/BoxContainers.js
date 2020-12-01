import React, { useState } from 'react'
import { useHistory } from 'react-router-dom'
import FeedbackBox from './FeedbackBox'
import StrategyBox from './StrategyBox'
const BoxContainers = (props) =>{
    const [boxType, setBoxType]=useState("null");
    if(props.feedback.delta<=0){
        setBoxType("Negative");
    }
    else if(props.feedback.delta>0){
        setBoxType("Positive");
    }
    return(
        <div className = "BoxContainer">
            <FeedbackBox 
            time = {props.time} 
            delta={props.feedback.delta}
            feedback={props.feedback.feedback}
            win_rate={props.feedback.win_rate}
            boxType = {boxType}/>
            <StrategyBox startegy={props.feedback.strategies} boxType={boxType}/>
        </div>
    );
}
export default BoxContainers;