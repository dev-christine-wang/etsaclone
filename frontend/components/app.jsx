import React from 'react';

import TopNavContainer from './top_nav/top_nav_container';

const App = ({ children, middle, bottom }) => (
  <div>
    <TopNavContainer />
    { children }
    { middle }
    { bottom }
  </div>
);

export default App;
