import React from 'react'
import './Feedback.css'
import BoxContainers from './BoxContainers'
const Feedback = (props) =>{  
    var feedbackArr = Object.keys(props.feedback);
   
    return(
        <div className = "feedback_content_container">
            <div className = "원인">원인</div>
            <div className = "others">
                <div className = "시점기대승률승률변화전략">
                    시점 기대승률 최대승률변화 전략
                </div>
                {feedbackArr.map(x=>(
                    <BoxContainers time = {x} feedback={props.feedback[x]}/>
                ))}
            </div>
        </div>
    );
}
export default Feedback;