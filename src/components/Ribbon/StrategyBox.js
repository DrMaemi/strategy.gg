import React, { useState } from "react"
import "./StrategyBox.css"
import ComboboxStrategy from './ComboBox'
const StrategyBox =({strategy}) =>(
    
    <div className="strategy_Container">
    
    <div className="strategyInner_Container">
    <div className = "StrategyBox">
        {console.log(strategy)}
        <ComboboxStrategy strategy={strategy}/>
        
       
       
    </div>
    </div>
    </div>
)
export default StrategyBox;