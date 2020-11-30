import React from 'react';
import Dropdown from 'react-dropdown';
import './MyDropDown.css';
const MyDropDown = props => {
  return <Dropdown {...props} className="comboxHeight" />;
};

export default MyDropDown;