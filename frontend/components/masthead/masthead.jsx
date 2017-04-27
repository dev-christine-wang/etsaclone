import React from 'react';
import { Link } from 'react-router';

const Masthead = () => {
  return(
    <header className='masthead'>
      <div className='masthead-image'>
        <img src={window.images.masthead} alt='EtsAClone' />
        <ul className='masthead-message'>
          <li className='masthead-message-line-1'>
            Whoever you are, find
          </li>
          <li className='masthead-message-line-2'>
            whatever you're into
          </li>
        </ul>
      </div>
      <div>
        <Link  className='shop-link' to='/items' activeClassName='current'>Shop our jewelry collection</Link>
      </div>
    </header>
  );
};

export default Masthead;
