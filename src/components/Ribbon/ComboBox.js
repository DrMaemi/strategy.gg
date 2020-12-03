import React,{useState} from 'react';
import { Combobox, DropdownList } from 'react-widgets'
import "react-widgets/dist/css/react-widgets.css";
import './ComboBox.css'
import './FeedbackBox.css'



const ComboboxStrategy = ({strategyBox,tierList})=> {
   
    let feedLength = [];
    let count=0;
    console.log(strategyBox.feedback);
    var strategyArr = Object.keys(strategyBox.feedback);
    console.log(strategyArr);
    strategyArr.map(x=>console.log(x));
    strategyArr.map(x=>{feedLength.push(strategyBox.feedback[x].feedback.length)});
    console.log(feedLength);
    const [tier, setTier] = useState("티어를 고르세요!");
    function laskf(){
      var x = document.getElementById("StrategyBox");
      
      x.style.height = feedLength[0];
    }
    const strategyPrint= () => {
      
      if(strategyBox.summonerTier==="GOLD"){
        if(tier === "GOLD") return strategyArr.map(number => <div className="StrategyBox" >{strategyBox.feedback[number].strategies[0].strategy.map(text => <div>{text}</div>)}</div>)
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
      if(tier === "MASTER"){
      
        return strategyArr.map(number => 
          <div className="StrategyBox">
            {number==3?<br></br>:null}{number==3?<br></br>:null}
          {number==8?<br></br>:null}{number==8?<br></br>:null}
          {number==10?<br></br>:null}{number==1?<br></br>:null}
          {number==18?<br></br>:null}{number==22?<br></br>:null}
          {number==22?<br></br>:null}
          {number==3?<br></br>:null}
          
          {strategyBox.feedback[number].strategies[0].strategy.map(text => 
            <div>{number==10?<br></br>:null}{number==10?<br></br>:null}{text}
              {number=22?<br></br>:null}{number=22?<br></br>:null}
              {number==18?<br></br>:null}{number==10?<br></br>:null}
              {number==8?<br></br>:null}{number==8?<br></br>:null}
              {number==3?<br></br>:null}{number==3?<br></br>:null}
              {number==8?<br></br>:null}{number==10?<br></br>:null}
              {number==10?<br></br>:null}{number==3?<br></br>:null}
              {number==18?<br></br>:null}{number==22?<br></br>:null}
              {number==22?<br></br>:null}{number==3?<br></br>:null}
              {number==3?<br></br>:null}{number==3?<br></br>:null}
              {number==3?<br></br>:null}{number==3?<br></br>:null}
              {number==3?<br></br>:null}{number==3?<br></br>:null}
              {number==10?<br></br>:null}{number==10?<br></br>:null}
              {number==10?<br></br>:null}{number==10?<br></br>:null}
              </div>)}{number==10?<br></br>:null}{number==10?<br></br>:null}
              {number==3?<br></br>:null}{number==3?<br></br>:null}
              {number==10?<br></br>:null}{number==10?<br></br>:null}
              {number==10?<br></br>:null}{number==10?<br></br>:null}
              {number==10?<br></br>:null}{number==10?<br></br>:null}
              </div>)
        }
        if(tier === "CHALLENGER"){
          return strategyArr.map(number => 
            <div className="StrategyBox">
              {number==3?<br></br>:null}{number==3?<br></br>:null}
            {number==8?<br></br>:null}{number==8?<br></br>:null}
            {number==10?<br></br>:null}{number==1?<br></br>:null}
            {number==18?<br></br>:null}{number==22?<br></br>:null}
            {number==22?<br></br>:null}
            {number==3?<br></br>:null}
            
            {strategyBox.feedback[number].strategies[1].strategy.map(text => 
              <div>{number==10?<br></br>:null}{number==10?<br></br>:null}{text}
                {number=22?<br></br>:null}{number=22?<br></br>:null}
                {number==18?<br></br>:null}{number==10?<br></br>:null}
                {number==8?<br></br>:null}{number==8?<br></br>:null}
                {number==3?<br></br>:null}{number==3?<br></br>:null}
                {number==8?<br></br>:null}{number==10?<br></br>:null}
                {number==10?<br></br>:null}{number==3?<br></br>:null}
                {number==18?<br></br>:null}{number==22?<br></br>:null}
                {number==22?<br></br>:null}{number==3?<br></br>:null}
                {number==3?<br></br>:null}{number==3?<br></br>:null}
                {number==3?<br></br>:null}{number==3?<br></br>:null}
                {number==3?<br></br>:null}{number==3?<br></br>:null}
                {number==10?<br></br>:null}{number==10?<br></br>:null}
                {number==10?<br></br>:null}{number==10?<br></br>:null}
                </div>)}{number==10?<br></br>:null}{number==10?<br></br>:null}
                {number==3?<br></br>:null}{number==3?<br></br>:null}
                {number==10?<br></br>:null}{number==10?<br></br>:null}
                {number==10?<br></br>:null}{number==10?<br></br>:null}
                {number==10?<br></br>:null}{number==10?<br></br>:null}
                </div>)
        } 
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