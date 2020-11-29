 import React, { useState } from "react"

 const StrategyInfoBox = ({feedBack, timestamp}) => {
     const [BoxType, setBoxType] = useState(null);


    console.log("StrategyInfoBox 안임 feed는");
    console.log(feedBack);
     return (
         
         <div className = {BoxType}>
            <span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;{timestamp} &nbsp; &nbsp; &nbsp; &nbsp; {timestamp<10 ? '\u00A0\u00A0' : null}</span>
            <span>{feedBack.win_rate}&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <span>{feedBack.delta}  &nbsp;&nbsp;  &nbsp;&nbsp;</span>
         
            
            {feedBack.feedback.map(text => <span>{text} &nbsp; </span>)}
         </div>
     );
 }
 export default StrategyInfoBox;