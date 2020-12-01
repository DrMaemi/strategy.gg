import React, { useState } from "react"
import "./FeedbackBox.css"

const FeedbackBox= (props) =>{
    var reasons = [];
    const [One_boxType, setOne_boxType] = useState(""); //시점, 기대승률, 최대승률변화 컨테이너
    const [Two_boxType, setTwo_boxType] = useState(""); // 원인 컨테이너

    for(var i=0;i<props.feedback.length;i++){
        reasons.push(String(i+1)+". "+props.feedback[i]);
    }
    
    if(props.boxType === "Positive"){
        setOne_boxType("Positive_One");
        setTwo_boxType("Positive_Two");
    }
    else {
        setOne_boxType("Negative_One");
        setTwo_boxType("Negative_Two");
    }
    return (
        <div className = "FeedbackBox">
            <div className = "One_boxType">
                <div className = "feedback_content">{props.time}</div>
                <div className = "feedback_content">{props.win_rate}</div>
                <div className = "feedback_content">{props.delta}</div>
            </div>
            <div className="Two_boxType">
                 {reasons.map(x=>(
                     <div className="feedback_content">{x}</div>
                ))}
            </div>
        </div>
    );
}
export default FeedbackBox;