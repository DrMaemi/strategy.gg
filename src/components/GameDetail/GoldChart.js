import React, { PureComponent } from 'react';
import {
  AreaChart, Area, XAxis, YAxis, CartesianGrid, Tooltip,
} from 'recharts';

const GoldChart = ({gold}) => {
  console.log(gold);
  let data = [];
  let check = 0;
  const gradientOffset = () => {
    let dataMax = Math.max(...data.map(i => i.gold_diff));
    let dataMin = Math.min(...data.map(i => i.gold_diff))
    if (dataMax <= 0) {
      return 0;
    }
    if (dataMin >= 0) {
      return 1;
    }
  return dataMax / (dataMax - dataMin);
  };

    for(var i=0;i<gold.length;i++){
        if(check===0){
          if(i%5==0){
            data.push({name : i, gold_diff: gold[i]});
          }
          else{
            data.push({name : "", gold_diff: gold[i]});
          }
        }
        if(i === gold.length-1){
            check=1;
        }
    }
    let off = gradientOffset();
    
    return (
      <AreaChart
        width={1000}
        height={300}
        data={data}
        margin={{
          top: 10,  left: 30, right : 30, bottom:20
        }}
      >
        <XAxis dataKey="name" />
        <YAxis /> 
        <Tooltip />
        <defs>
          <linearGradient id="splitColor" x1="0" y1="0" x2="0" y2="1">
            <stop offset={off} stopColor="#4ec758" stopOpacity={1} />
            <stop offset={off} stopColor="#ff4133" stopOpacity={1} />
          </linearGradient>
        </defs>
        <Area type="monotone" dataKey="gold_diff" stroke="#000" fill="url(#splitColor)" />
      </AreaChart>
    );
  }
  export default GoldChart;