import React, {useState} from 'react'
import "./RibbonMenu.css"
import Feedback from './Feedback'
import StrategyInfoBox from './StrategyInfoBox'
const RibbonMenu = ({data}) =>{
    const [FeedbackBTN, setFeedbackBTN] = useState("Selected");
    const [PlayStyleBTN, setPlayStyleBTN] = useState("UnSelected");
    let i =0;
     let arr = [];
     const find = (i) => {
        for (i; i < 120; i++) {
          if (data.feedback_points[i]) {
            arr.push(i);
          }
          
        }
        console.log("find에 있다");
      return (arr.map(feed => (<StrategyInfoBox key={i} feedBack={data.feedback_points[feed]} timestamp={feed}/>)))
    //여기 겹치나?
      };

    const F_onClick = (event) => {
        if(FeedbackBTN === "UnSelected"){
            setFeedbackBTN("Selected");
            setPlayStyleBTN("UnSelected");
        }
    }
    const PS_onClick = (event) => {
        if(PlayStyleBTN === "UnSelected"){
            setFeedbackBTN("UnSelected");
            setPlayStyleBTN("Selected");
        }
    }
    return(
    <div >
        <div className = "btn">
          <button onClick = {F_onClick} className = {FeedbackBTN}>Feedback</button>
          <button onClick = {PS_onClick} className = {PlayStyleBTN}>PlayStyle</button>
        </div>
        <div className = "hihi">
              <text className = "desc" > 시점</text>
              <text className = "desc"> 최대승률변화</text> 
              <text className = "desc"> 기대승률</text>
              <text className = "desc"> 원인</text>

              
            {find(i)}
        </div>
    </div>
    );
}
export default RibbonMenu;