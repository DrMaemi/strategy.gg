import React from 'react'
import FeedbackBox from './FeedbackBox.js'
import './Feedback.css'
const Feedback = (props) =>{  
    var feedback = Object.keys(props.feedback);
    
    return(
        <div>
        <div className = "content">
              <text className = "desc" > 시점</text>
              <text className = "desc"> 최대승률변화</text> 
              <text className = "desc"> 기대승률</text>
              <text className = "desc"> 원인</text>
        </div>
        {feedback.map(element=> <FeedbackBox info = {props.feedback[element]} minute = {element}></FeedbackBox>)}
        </div>
    );
}
export default Feedback;