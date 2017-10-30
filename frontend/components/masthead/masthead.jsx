import React from 'react';
import { Link } from 'react-router';

const Masthead = () => {
  return(
    <header>
      <div className='masthead'>
        <img src={window.images.masthead} alt='EtsAClone' />
        <ul className='masthead-message'>
          <li>Whoever you are, find</li>
          <li>whatever you're into</li>
        </ul>
        <Link className='shop-link' to='/items' activeClassName='current'>Shop our jewelry collection</Link>
      </div>
    </header>
  );
};

export default Masthead;
