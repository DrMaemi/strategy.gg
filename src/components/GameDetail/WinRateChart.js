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
        width={1000}
        height={200}
        data={data}
        margin={{
          top: 10, right: 30, left: 30, bottom: 20,
        }}>
        <XAxis dataKey="name" />
        <YAxis />
        <Tooltip />
        <Line type="monotone" dataKey="value" stroke="#8884d8" activeDot={{ r: 8 }} />
      </LineChart>
    );
}
export default WinRateChart;