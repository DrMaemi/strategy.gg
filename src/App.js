import React from 'react';
import MainPage from './route/MainPage.js';
import ModelPage from './route/ModelPage.js';
import ExecptPage from './route/ExecptPage.js';
import SummonerDetailPage from './route/SummonerDetailPage.js';

import {HashRouter, Route} from "react-router-dom";
function App() {
  return (
    <HashRouter>
      <Route path="/home" component={MainPage}/>
      <Route path="/model" component={ModelPage}/>
      <Route path="/summoner" component={SummonerDetailPage}/>
      <Route path="/except" component={ExecptPage}/>
    </HashRouter>
  );
}


export default App;
