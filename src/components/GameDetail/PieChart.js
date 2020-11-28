import React, { PureComponent } from 'react';
import {
  PieChart, Pie, Sector, Cell,
} from 'recharts';
import './PieChart.css';
const data = [
  { name: 'Group A', value: 5 },
  { name: 'Group B', value: 3 },
];

const COLORS = ['#0088FE', '#FF5050'];

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
    data[0].value = props.feedback[0];
    data[1].value = props.feedback[1];
    return (
        <PieChart width = {400} height = {400} className="inline">
          <Pie
            data={data}
            cx={60}
            cy={60}
            labelLine={false}
            label={renderCustomizedLabel}
            outerRadius={40}
            fill="#8884D8"
            dataKey="value"
            className="inline"
          >
            {
              data.map((entry, index) => <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />)
            }
          </Pie>
        </PieChart>
      );
  }
export default Example;