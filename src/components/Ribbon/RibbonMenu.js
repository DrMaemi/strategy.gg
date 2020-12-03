import React, {useState} from 'react'
import "./RibbonMenu.css"
import Feedback from './Feedback'
import PlayStyle from './PlayStyle'
const RibbonMenu = ({feedback, playstyle }) =>{
    
    const [FeedbackBTN, setFeedbackBTN] = useState("Selected");
    const [PlayStyleBTN, setPlayStyleBTN] = useState("UnSelected");
    const [FeedbackComp, setFeedbackComp] = useState("show");
    const [PlayStyleComp, setPlayStyleComp] = useState("hidden");
    
    const F_onClick = (event) => {
        if(FeedbackBTN === "UnSelected"){
            setFeedbackBTN("Selected");
            setPlayStyleBTN("UnSelected");
            setFeedbackComp("show");
            setPlayStyleComp("hidden");
        }
    }
    const PS_onClick = (event) => {
        if(PlayStyleBTN === "UnSelected"){
            setFeedbackBTN("UnSelected");
            setPlayStyleBTN("Selected");
            setFeedbackComp("hidden");
            setPlayStyleComp("show");
        }
    }
    return(
    <div >
        <div className = "btn">
          <button onClick = {F_onClick} className = {FeedbackBTN}>Feedback</button>
          <button onClick = {PS_onClick} className = {PlayStyleBTN}>PlayStyle</button>
        </div>
        <div className = "hihi">
            <div className = {FeedbackComp}>
            <Feedback feedback={feedback.feedback_points} summonerTier={feedback.tier}/>  
            </div>
            <div className = {PlayStyleComp}>
            <PlayStyle info={playstyle} />
            </div>
        </div>
    </div>
    );
}
export default RibbonMenu;