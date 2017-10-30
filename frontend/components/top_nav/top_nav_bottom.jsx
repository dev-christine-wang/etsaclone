import React from 'react'
import { Link } from 'react-router';

export const TopNavBottom = () => (
  <div className='top-nav-bottom'>
    <nav className='categories'>
      <Link className='all-jewelry' to='/items' activeClassName='current'>All Jewelry</Link>
      <Link className='earrings' to='/items/earrings' activeClassName='current'>Earrings</Link>
      <Link className='necklaces' to='/items/necklace' activeClassName='current'>Necklaces</Link>
      <Link className='rings' to='/items/ring' activeClassName='current'>Rings</Link>
    </nav>
  </div>
);
