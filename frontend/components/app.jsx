import React from 'react';
import TopNavContainer from './top_nav/top_nav_container';

const App = ({ children }) => (
  <div>
    <h1>EtsAClone</h1>
    <TopNavContainer />
    { children }
  </div>
);

export default App;
