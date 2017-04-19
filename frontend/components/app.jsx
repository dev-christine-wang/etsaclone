import React from 'react';
import TopNavContainer from './top_nav/top_nav_container';

const App = ({ children }) => (
  <div>
    <TopNavContainer />
    { children }
  </div>
);

export default App;
