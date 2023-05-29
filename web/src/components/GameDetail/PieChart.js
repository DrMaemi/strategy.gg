import React, { PureComponent } from 'react';
import {
  PieChart, Pie, Sector, Cell, Tooltip
} from 'recharts';
import './PieChart.css';

const COLORS = ['#0070D6', '#DB4444'];
const RADIAN = Math.PI / 180;
const renderCustomizedLabel = ({
  cx, cy, midAngle, innerRadius, outerRadius, value, index,
}) => {
   const radius = innerRadius + (outerRadius - innerRadius) * 0.5;
  const x = cx + radius * Math.cos(-midAngle * RADIAN);
  const y = cy + radius * Math.sin(-midAngle * RADIAN);
  return (
    <text x={x} y={y} fill="white" textAnchor={x > cx ? 'start' : 'end'} dominantBaseline="central">
      {value}
    </text>
  );
};
const Example = (props) => {
  let data = [];
  data.push({name : "Good", value : props.feedback[0]});
  data.push({name : "Bad", value : props.feedback[1]});
    return (
        <PieChart width = {100} height = {100} className="inline">
          <Pie
            data={data}
            cx={50}
            cy={45}
            labelLine={false}
            label={renderCustomizedLabel}
            outerRadius={35}
            fill="#8884D8"
            dataKey="value"
            className="inline"
          >
            {
              data.map((entry, index) => <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />)
            }
          </Pie>
          <Tooltip />
        </PieChart>
      );
  }
export default Example;

