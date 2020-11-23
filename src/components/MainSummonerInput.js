import React,{useState} from 'react';
import './MainSummonerInput.css';
import {Link} from'react-router-dom';
import axios from "axios"; 

function MainSummonerInput(){
  
  let [users, setUsers] =useState(null);
 

  const handleSubmit = (event) => {
    event.preventDefault();
  }

  const onChange = (event) => {
    setUsers(event.target.value);
    
  }

  console.log(`users is ${users}`);
  return(
    
    <form>
       <input 
         type = "text" 
         name = "users"
         placeholder = "Hide On Bush"
         className="search"
         onChange={onChange}
        />
        {console.log(users)}
       <Link to={{
         pathname : "/summoner",
         state : {
            mov:users,
          },
       }}>
        <button type="submit" className = "searchButton" onSubmit={handleSubmit}>
        </button>
       </Link>

       
    </form>
   );

}

export default MainSummonerInput;