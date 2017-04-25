import React from 'react';

import TopNavContainer from './top_nav/top_nav_container';

const App = ({ children, first, second }) => (
  <div className='app'>
    <TopNavContainer />
    { children }
    { first }
    { second }
  </div>
);

export default App;
