import React,{useState} from 'react';
import { Route } from 'react-router-dom';
import OtherGnb from './../components/OtherGnb.js';
import './SummonerDetailPage.css';
import axios from "axios"; 


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
        console.log(this.props.location.state.mov);
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
        
      
    
        if(err == 0){
            return(
                <div className="container" >
                    {this.state.isLoading ? (<div>로딩중입니다!!.</div>) :(
                        <div>로딩완료{console.log(spec.userspec.summoner_name)} </div>
                    )}
                </div>
            );
        }
        else{
            return(
                <div className="container" >
            
                <OtherGnb/>
                오류페이징비니다
            
            
                </div>
            );

        }
    }
}

export default SummonerDetailPage;