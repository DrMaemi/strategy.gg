import React, { useState } from "react"
import "./FeedbackBox.css"

const FeedbackBox = (props) => {
    var reasons = [];

    for (var i = 0; i < props.feedback.length; i++) {
        reasons.push(String(i + 1) + ". " + props.feedback[i]);
    }
   
        return (
            <div className="FeedbackBox">
                {props.delta <= 0 ? <div className="Negative">
                    <div className="feedback_content">{props.time}분</div>
                    <div className="feedback_content">{props.win_rate}%</div>
                    <div className="feedback_content">{props.delta}%</div>
                </div>

                    : <div className="Positive">
                        <div className="feedback_content">{props.time}분</div>
                        <div className="feedback_content">{props.win_rate}%</div>
                        <div className="feedback_content">{props.delta}%</div>
                    </div>
                }

                <div className="원인_Container">
                    {reasons.map(x => (
                        <div className="feedback_content">{x}</div>
                    ))}
                </div>
            </div>
        );
}
export default FeedbackBox;