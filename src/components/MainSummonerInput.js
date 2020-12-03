import React, {useState} from 'react';
import {Link, useHistory} from 'react-router-dom';
import axios from 'axios';
import './MainSummonerInput.css'
import loading from '../img/loading.png';

const MainSummonerInput = () =>{
  
  const history = useHistory();
  let [users, setUsers] =useState(null);
  let [userSpec, setUserSpec]= useState(null);
  let [searchBTN, setSearchBtn] = useState("searchButton");
  const handleSubmit = (event) => {
    event.preventDefault();
  }
  const onChange = (event) => {
    setUsers(event.target.value);
  }
  const onClick=()=>{
    //alert("소환사 데이터를 로딩합니다.\n확인 버튼을 누른 후 조금만 기다려주세요.\n다소 시간이 걸릴 수도 있습니다.");
    setSearchBtn("SearchButtonloading");
    getSummonerInfo();
  }
  const getSummonerInfo = async() => {
   
    try{
        const spec= await axios.get(`http://61.99.75.232:5000/specpage/?name=${users}`);
        setSearchBtn("searchButton");
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
    
    <form onSubmit={handleSubmit} >
       <input 
        id = "myInput"
         type = "text" 
         name = "users"
         placeholder = "소환사 이름을 입력하세요."
         className="search"
         onChange={onChange}
        />
        {console.log(users)}
        <button className = {searchBTN}  onClick={onClick}/>
    </form>
   );

}

export default MainSummonerInput;