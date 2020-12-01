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
                    <div >시점</div>
                    <div className = "기대승률">기대승률</div>
                    <div className = "최대승률변화량">최대승률변화량</div>
                    <div className = "전략">전략</div>
                </div>
                {feedbackArr.map(x=>(
                    <BoxContainers time = {x} feedback={props.feedback[x]}/>
                ))}
            </div>
        </div>
    );
}
export default Feedback;