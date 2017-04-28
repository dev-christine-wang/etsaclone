import React from 'react';

import TopNavContainer from './top_nav/top_nav_container';
import Footer from './footer/footer';

const App = ({ children, first, second }) => (
  <div>
    <TopNavContainer />
    { children }
    { first }
    { second }
    <Footer />
  </div>
);

export default App;
