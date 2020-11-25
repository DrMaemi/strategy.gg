import React from 'react';
import {HashRouter, Route} from "react-router-dom";
import MainPage from './route/MainPage.js';
import ModelPage from './route/ModelPage.js';
import ExceptPage from './route/ExceptPage.js';
import SummonerDetailPage from './route/SummonerDetailPage.js';

function App() {
  return (
    <HashRouter>
    <MainPage></MainPage>
    <Route path="/MainPage" exact={true} component={MainPage}/>
    <Route path="/ModelPage" exact={true} component={ModelPage}/>
    <Route path="/summoner/:name" component={SummonerDetailPage}/>
    <Route path="/ExceptPage" exact={true} component={ExceptPage}/>
    </HashRouter>
  );
}


export default App;
