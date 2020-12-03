import React, {useState} from 'react'
import "./RibbonMenu.css"
import Feedback from './Feedback'
import PlayStyle from './PlayStyle'
const RibbonMenu = ({data}) =>{
    console.log(data);
    const [FeedbackBTN, setFeedbackBTN] = useState("Selected");
    const [PlayStyleBTN, setPlayStyleBTN] = useState("UnSelected");
    const [FeedbackComp, setFeedbackComp] = useState("show");
    const [PlayStyleComp, setPlayStyleComp] = useState("hidden");
    console.log(data);
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
            <Feedback feedback={data.feedback_points}/> 
            </div>
            <div className = {PlayStyleComp}>
            <PlayStyle className = {PlayStyleComp} />
            </div>
        </div>
    </div>
    );
}
export default RibbonMenu;