import React, { PureComponent } from 'react';

import {
  LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend,
} from 'recharts';

const data = [];
var check = 0;
const Example = () => {
   const rate = [50.0, 49.7, 51.7, 59.2, 43.1, 47.4, 49.6, 50.5, 43.5, 27.9, 42.3, 53.7, 59.9, 74.9, 61.6, 50.4, 36.7, 23.5, 24.1, 22.7, 31.7, 31.3, 33.4, 22.9, 25.7, 20.6, 12.0, 12.9, 9.5, 8.9, 9.9, 8.0, 7.0, 9.4, 6.3, 11.2];
    console.log(rate.length);
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
            {console.log(data)}
        <XAxis dataKey="name" />
        <YAxis />
        <Tooltip />
        <Line type="monotone" dataKey="value" stroke="#8884d8" activeDot={{ r: 8 }} />
      </LineChart>
    );
}
export default Example;