import React, {useState} from 'react';
import {Link, useHistory} from 'react-router-dom';
import axios from 'axios';
import './MainSummonerInput.css'

const MainSummonerInput = () =>{
  
  const history = useHistory();
  let [users, setUsers] =useState(null);
  let [userSpec, setUserSpec]= useState(null);
  const handleSubmit = (event) => {
    event.preventDefault();
  }
  const onChange = (event) => {
    setUsers(event.target.value);
  }
  const getSummonerInfo = async() => {
   
    console.log(21312312);
    
    try{
        const spec= await axios.get(`http://61.99.75.232:5000/specpage/?name=${users}`);
        console.log(spec);
        console.log(12312321);
        setUserSpec(spec);
        history.push({
          pathname: `/summoner/${users}`,
          state: { spec }
        })
    }
    catch{
      history.push("/ExceptPage");
    }
    
}
  
  return(
    
    <form onSubmit={handleSubmit}>
       <input 
         type = "text" 
         name = "users"
         placeholder = "소환사 이름을 입력하세요"
         className="search"
         onChange={onChange}
        />
        {console.log(users)}
        <button className = "searchButton"  onClick={getSummonerInfo}/>
    </form>
   );

}

export default MainSummonerInput;