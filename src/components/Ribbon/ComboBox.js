import React,{useState} from 'react';
import { Combobox } from 'react-widgets'
import "react-widgets/dist/css/react-widgets.css";
import './ComboBox.css'
let colors = ['orange', 'red', 'blue', 'purple'];

class ComboboxStrategy extends React.Component {
    //받으면 전략에 알맞게 돌리기]
    //티어 비교하기

    // let [goldST, setGoldST] = useState(null);
  constructor(...args) {
    super(...args)
    this.state = { value: '티어를 고르세요' }
  }
  
  printf(){    
    if(this.state.value === 'orange'){      
      return <div>오렌지</div>  
    }
    else if(this.state.value === 'red'){
      return <div>빨강</div>
    }
    else if(this.state.value === 'blue'){      return <div>파랑</div>
    }
    else{
      return <div>보라</div>

    }
  }
  
  render() {
  
    return (
    <>
      <Combobox
        data={colors}
        value={this.state.value}
        onChange={value => this.setState({ value })}
        className="size"
      />
      {this.printf()} 
      </>
    )
  }
}

export default ComboboxStrategy;

