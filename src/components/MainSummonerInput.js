import React from 'react';
import './MainSummonerInput.css'

function MainSummonerInput(){

    return(
        <form>
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