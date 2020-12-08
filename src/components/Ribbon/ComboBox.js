import React,{useState} from 'react';
import { Combobox, DropdownList } from 'react-widgets'
import "react-widgets/dist/css/react-widgets.css";
import './ComboBox.css'
const ComboboxStrategy = ({strategyBox,tierList})=> {
    console.log(strategyBox);
    var strategyArr = Object.keys(strategyBox.feedback);
    console.log(strategyArr);
    const [tier, setTier] = useState("티어를 고르세요!");
    const strategyPrint= () => {
      if(strategyBox.summonerTier==="GOLD"){
        if(tier === "GOLD") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[0].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "PLATINUM") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[1].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "DIAMOND") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[2].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "MASTER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[3].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "CHALLENGER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[4].strategy.map(text => <div>{text}</div>)}</div>)
      }
      if(strategyBox.summonerTier==="PLATINUM"){
        if(tier === "PLATINUM") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[0].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "DIAMOND") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[1].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "MASTER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[2].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "CHALLENGER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[3].strategy.map(text => <div>{text}</div>)}</div>)
      }
      if(strategyBox.summonerTier==="DIAMOND"){
        if(tier === "DIAMOND") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[0].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "MASTER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[1].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "CHALLENGER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[2].strategy.map(text => <div>{text}</div>)}</div>)
      }
      if(strategyBox.summonerTier==="MASTER"){
        if(tier === "MASTER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[0].strategy.map(text => <div>{text}</div>)}</div>)
        if(tier === "CHALLENGER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[1].strategy.map(text => <div>{text}</div>)}</div>)
      }
      if(strategyBox.summonerTier==="CHALLENGER"){
        if(tier === "CHALLENGER") return strategyArr.map(number => <div className="StrategyBox">{strategyBox.feedback[number].strategies[0].strategy.map(text => <div>{text}</div>)}</div>)
      }
    }
    return(
      <>
        <DropdownList
          data={tierList}
          value={tier}
          onChange={value => setTier(value)}
          className="size"
        />
        <div className="StrategyBoxContainer">
          {strategyPrint()}
        </div>
        </>
      )
}
export default ComboboxStrategy;