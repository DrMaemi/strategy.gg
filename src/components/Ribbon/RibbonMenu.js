import React, {useState} from 'react'
import "./RibbonMenu.css"
import Feedback from './Feedback'
import PlayStyle from './PlayStyle'
const RibbonMenu = ({data}) =>{
    const [FeedbackBTN, setFeedbackBTN] = useState("Selected");
    const [PlayStyleBTN, setPlayStyleBTN] = useState("UnSelected");
    console.log(data);
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
          <PlayStyle />           
            
        </div>
    </div>
    );
}
export default RibbonMenu;