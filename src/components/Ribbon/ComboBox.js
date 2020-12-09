import React,{useState} from 'react';
import { Combobox, DropdownList } from 'react-widgets'
import "react-widgets/dist/css/react-widgets.css";
import './ComboBox.css'
const ComboboxStrategy = ({strategyBox,tierList})=> {
    console.log(strategyBox);
    var strategyArr = Object.keys(strategyBox.feedback);
    console.log(strategyArr);
    const [tier, setTier] = useState("티어를 고르세요!");
    
    return(
      <>
        <DropdownList
          data={tierList}
          value={tier}
          onChange={value => setTier(value)}
          className="size"
        />
        </>
      )
}
export default ComboboxStrategy;