import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import firebase from "./firebase";
import Game from "../src/components/Game"
import PieChart from "./components/PieChart"
ReactDOM.render(
  <React.StrictMode>
    <PieChart />
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals

