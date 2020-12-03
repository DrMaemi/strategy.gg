import React,{useState} from 'react';
import { Combobox } from 'react-widgets'
import "react-widgets/dist/css/react-widgets.css";
import './ComboBox.css'


const strategyTier = ["GOLD","PLATINUM","DIAMOND","MASTER","CHALLENGER"];
const ComboboxStrategy = ({strategy})=> {
    console.log(strategy);
    const [tier, setTier] = useState("티어를 고르세요!");
    
    const strategyPrint= () => {
    if(tier === "GOLD") return strategy[0].strategy.map(text => <div>{text}</div>);

    if(tier === "PLATINUM") return strategy[1].strategy.map(text => <div>{text}</div>);
    if(tier === "DIAMOND") return strategy[2].strategy.map(text => <div>{text}</div>);
    if(tier === "MASTER") return strategy[3].strategy.map(text => <div>{text}</div>);
    if(tier === "CHALLENGER") return strategy[4].strategy.map(text => <div>{text}</div>);


    }


    return(
      <>
        <Combobox
          data={strategyTier}
          value={tier}
          onChange={value => setTier(value)}
          className="size"
        />
        {strategyPrint()}
        </>
      )
}

// class ComboboxStrategy extends React.Component {
    
//   constructor(...args) {
//     super(...args)
//     this.state = { value: '티어를 고르세요' }
//   }
  
//   printf(){    
//     if(this.state.value === 'orange'){      
//       return <div>오렌지</div>  
//     }
//     else if(this.state.value === 'red'){
//       return <div>빨강</div>
//     }
//     else if(this.state.value === 'blue'){      return <div>파랑</div>
//     }
//     else{
//       return <div>보라</div>

//     }
//   }
  
//   render() {
  
//     return (
//     <>
//       <Combobox
//         data={strategy}
//         value={this.state.value}
//         onChange={value => this.setState({ value })}
//         className="size"
//       />
//       {this.printf()} 
//       </>
//     )
//   }
// }

export default ComboboxStrategy;

