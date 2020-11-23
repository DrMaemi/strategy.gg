import React, {useState} from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';
import './MainSummonerInput.css'



const MainSummonerInput = () => {
  const [users, setUsers] =useState(null);
  const [loading , setloading] =useState(false);
  const [error, setError] =useState(null);

  const apiCall = async (name) => {  
    try{
      setError(null);
      setUsers(null);
      setloading(true);
     
      const response = await axios.get(
        'http://61.99.75.232:5000/specpage/?name='+name
      );
      console.log(response);
     
      return response;
    } catch(error){
      console.log(error);
      setError(error);
    }
    setloading(false);
  };

  const onChange = (event) => {
    setUsers(event.target.value);
  }

  const onSubmit = async(event) => {
    
    var searched_name = String(event.target.users.value).replace(/ /g,"+");
    console.log(searched_name);
    event.preventDefault();
    const summoner = apiCall(searched_name)
          .then(response => {
          if (response){
              console.log("get summoner");
          }
          })
          .catch(error => {
            console.log("get error");
            <Link to="/ExceptPage"></Link>
          })
          console.log('call api');

          if (loading) return <div className='loading'></div>
         /* if (error) return <Link to="/ExceptPage"></Link>*/

  }
  return(
    <form onSubmit={onSubmit}>
       <input 
         type = "text" 
         name = "summoners"
         placeholder = "소환사 이름을 입력해 주세요"
         className="search"
         onChange={onChange}
        />
       <button className = "searchButton" />
       
    </form>
   );

}

export default MainSummonerInput;