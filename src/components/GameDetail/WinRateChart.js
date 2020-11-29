import React, { PureComponent } from 'react';

import {
  LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend,
} from 'recharts';


const WinRateChart = ({rate}) => {
    let data = [];
    let check = 0;
   
    for(var i=0;i<rate.length;i++){
        if(check==0){
        data.push({name : i, value : rate[i]});
        }
        if(i == rate.length-1){
            check=1;
        }
    }
    
    return (
      <LineChart
        width={800}
        height={300}
        data={data}
        margin={{
          top: 5, right: 30, left: 20, bottom: 5,
        }}>
        <XAxis dataKey="name" />
        <YAxis />
        <Tooltip />
        <Line type="monotone" dataKey="value" stroke="#8884d8" activeDot={{ r: 8 }} />
      </LineChart>
    );
}
export default WinRateChart;