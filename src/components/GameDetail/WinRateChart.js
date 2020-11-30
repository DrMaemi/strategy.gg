import React, { PureComponent } from 'react';

import {
  LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend,
} from 'recharts';


const WinRateChart = ({rate}) => {
    let data = [];
    let check = 0;
   
    for(var i=0;i<rate.length;i++){
        if(check==0){
          if(i%5==0){
            data.push({name : i, win_rate : rate[i]});
          }
          else{
            data.push({name : "", win_rate : rate[i]});
          }
        }
        if(i == rate.length-1){
            check=1;
        }
    }
    
    return (
      <LineChart
        width={1000}
        height={200}
        data={data}
        margin={{
          top: 10, right: 30, left: 30, bottom: 20,
        }}>
        <XAxis dataKey="name" />
        <YAxis />
        <Tooltip />
        <Line type="monotone" dataKey="win_rate" stroke="#f7b64d" activeDot={{ r: 8 }} />
      </LineChart>
    );
}
export default WinRateChart;