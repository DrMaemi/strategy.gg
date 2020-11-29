import React, {useState} from 'react'
import "./RibbonMenu.css"
import Feedback from './Feedback'

const RibbonMenu = (props) =>{
    const [FeedbackBTN, setFeedbackBTN] = useState("Selected");
    const [PlayStyleBTN, setPlayStyleBTN] = useState("UnSelected");
    
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
    <div className = "Center">
        <button onClick = {F_onClick} className = {FeedbackBTN}>Feedback</button>
        <button onClick = {PS_onClick} className = {PlayStyleBTN}>PlayStyle</button>
        
        <Feedback feedback = {props.feedback}/>
        
    </div>
    );
}
export default RibbonMenu;