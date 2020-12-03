import React from 'react'
import './Feedback.css'
import BoxContainers from './BoxContainers'
import ComboboxStrategy from './ComboBox'
const Feedback = (props) =>{
    var feedbackArr = Object.keys(props.feedback);
    let tierList = [];
  
    if(props.summonerTier === "GOLD")tierList=["GOLD","PLATINUM","DIAMOND","MASTER","CHALLENGER"];
    if(props.summonerTier === "PLATINUM")tierList=["PLATINUM","DIAMOND","MASTER","CHALLENGER"];
    if(props.summonerTier === "DIAMOND")tierList=["DIAMOND","MASTER","CHALLENGER"];
    if(props.summonerTier === "MASTER")tierList=["MASTER","CHALLENGER"];
    if(props.summonerTier === "CHALLENGER")tierList=["CHALLENGER"];

    return(
        <div className = "feedback_content_container">
            <div className = "원인">원인</div>
            <div className = "others">
                <div className = "시점기대승률승률변화전략">
                    <div >시점</div>
                    <div className = "기대승률">기대승률</div>
                    <div className = "최대승률변화량">최대승률변화량</div>
                   

                </div>
                {feedbackArr.map(x=>(
                    <BoxContainers time = {x} feedback={props.feedback[x]}/>
                ))}
               
            </div>
        
            <div className = "전략">전략

            </div>
            <div className = "전략">

            <ComboboxStrategy strategyBox={props} tierList={tierList}/>
            </div>

            
        
        </div>
    );
}
export default Feedback;