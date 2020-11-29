 import React, { useState } from "react"
import "./FeedbackBox.css"
 const StrategyInfoBox = (props) => {
     console.log(props);
    const [type, setType] = useState("Positive");

    if(props.info.delta<=0){
        setType("Negative");
    }
    else{
        setType("Positive");
    }
     return (
         
         <div className = "Positive">
             {props.info.delta}
             {props.info.win_rate}
             {props.info.feedback}
         </div>
     );
 }
 export default StrategyInfoBox;