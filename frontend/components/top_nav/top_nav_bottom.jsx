import React from 'react'
import { Link } from 'react-router';

export const TopNavBottom = () => (
  <div className='top-nav-bottom'>
    <nav className='categories'>
      <Link className='all-jewelry' to='/items' activeClassName='current'>All Jewelry</Link>
    </nav>
  </div>
);
