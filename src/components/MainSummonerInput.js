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
          'http://61.99.75.232:5000/specpage/Hideonbush',{
            // params: {
            //   name:'hide on bush'
            // }
          }
        );
        console.log(response.data)
        return response;
    } catch(error){
        setError(error);
    }
    setloading(false);
  };

  const onChange = (event) => {
    const {
      target: { name, value },
    } = event;
  }
  const onSubmit = async(event) => {
    event.preventDefault();
    const summonername = apiCall()
          .then(response => {
          if (response){
              console.log(Object.entries(summonername.data.message))
            }
          })
          .catch(error => {
          console.log(error);
          })
    console.log('call api')
  }
  if (loading) return <div className='loading'></div>
  if (error) return <Link to="/ModelPage"></Link>
  return(
    <form onSubmit={onSubmit}>
       <input 
         type = "UserName" 
         name = "UserName" 
         placeholder = "Hide On Bush"
         className="search"
        />
       <button className = "searchButton"/>
     </form>
   );

}

export default MainSummonerInput;