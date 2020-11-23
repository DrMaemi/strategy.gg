import React from 'react';
import {HashRouter, Route} from "react-router-dom";
import MainPage from './route/MainPage.js';
import ModelPage from './route/ModelPage.js';
import ExecptPage from './route/ExecptPage.js';
import SummonerDetailPage from './route/SummonerDetailPage.js';

function App() {
  return (
    <HashRouter>
      <MainPage></MainPage>
      <Route path="/home" component={MainPage}/>
      <Route path="/model" component={ModelPage}/>
      <Route path="/summoner" component={SummonerDetailPage}/>
      <Route path="/except" component={ExecptPage}/>
    </HashRouter>
  );
}


export default App;
