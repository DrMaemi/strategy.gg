import React, { PureComponent } from 'react';
import {
  AreaChart, Area, XAxis, YAxis, CartesianGrid, Tooltip,
} from 'recharts';


const data = [];
var check = 0;
const gradientOffset = () => {
    const dataMax = Math.max(...data.map(i => i.uv));
    const dataMin = Math.min(...data.map(i => i.uv))
    if (dataMax <= 0) {
      return 0;
    }
    if (dataMin >= 0) {
      return 1;
    }

  return dataMax / (dataMax - dataMin);
};



const Example = () => {
  const gold = [0, 0, 77, 677, -58, -89, 133, 100, -467, -664, 187,
     258, 107, 906, -318, -898, -1261, -2348, -2647, -2115, -1007, 
     -838, 134, -1807, -1791, -3251, -3462, -4223, -4966, -5607, -4752, 
     -5601, -5174, -7821, -9467, -10118];
    
    for(var i=0;i<gold.length;i++){
        if(check===0){
        data.push({name : i, uv: gold[i]});
        }
        if(i === gold.length-1){
            check=1;
        }
    }
    const off = gradientOffset();
    console.log(data);
    return (
      <AreaChart
        width={700}
        height={400}
        data={data}
        margin={{
          top: 10, right: 30, left: 0, bottom: 0,
        }}
      >
        <XAxis dataKey="name" />
        <YAxis />
        <Tooltip />
        <defs>
          <linearGradient id="splitColor" x1="0" y1="0" x2="0" y2="1">
            <stop offset={off} stopColor="green" stopOpacity={1} />
            <stop offset={off} stopColor="red" stopOpacity={1} />
          </linearGradient>
        </defs>
        <Area type="monotone" dataKey="uv" stroke="#000" fill="url(#splitColor)" />
      </AreaChart>
    );
  }
  export default Example;