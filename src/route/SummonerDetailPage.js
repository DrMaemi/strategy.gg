import React,{useState} from 'react';
import { Route} from 'react-router-dom';
import OtherGnb from './../components/OtherGnb.js';
import './SummonerDetailPage.css';
import axios from "axios"; 
import Summoner from '../components/Summoner'
import ExceptPage from './ExceptPage.js';
import Game from '../components/Game'

class SummonerDetailPage extends React.Component{

    
    constructor(props){
        super(props);
        this.state = {
            err : 0,
            spec: {},
            isLoading : true,
          };
    }

    
    getMovies = async() => {
        /*console.log(this.props.location.state.mov);*/
        try{
            const mov= await axios.get(`http://61.99.75.232:5000/specpage/?name=${this.props.location.state.mov}`);
            this.setState({spec : mov.data, isLoading : false})

        }
        catch{
            this.setState({err : 1});
        }
    }
      componentDidMount(){
        this.getMovies();
      }

    render(){
        
   
        const spec = this.state.spec;
        // const userSpec = spec.userspec;
        // const matchSpecs = spec.matchspecs;
        const err = this.state.err;

    
        if(err === 0){
            return(
                <div className="container" >
                    <OtherGnb/>
                    {this.state.isLoading ? (<div>로딩중입니다!!.</div>) :(
                        <div>
                        {console.log(spec.matchspecs)}
                        <Summoner info = {spec.userspec}></Summoner>
                        <Game info = {spec.matchspecs[0]}/>
                        <Game info = {spec.matchspecs[1]}/>
                        <Game info = {spec.matchspecs[2]}/>
                        <Game info = {spec.matchspecs[3]}/>
                        <Game info = {spec.matchspecs[4]}/>

                        
                        
                        
                        </div>
                    )}
                </div>
            );
        }
        else{
            return(
                <div className="container" >
            
                <OtherGnb/>
                <ExceptPage></ExceptPage>
            
                </div>
            );

        }
    }
}

export default SummonerDetailPage;