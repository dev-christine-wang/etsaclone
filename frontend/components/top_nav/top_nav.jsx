import React from 'react';
import { Link } from 'react-router';

const sessionSignInLinks = signin => (
  <header className='top_nav'>
    <div className='top_nav_top'>
      <nav className='logo'>
        <ul>
          <li>
            <Link to='/' activeClassName='current'>EtsAClone</Link>
          </li>
        </ul>
      </nav>
      <nav className='register-signin-nav'>
        <ul>
          <li className='register-link'>
            <Link to='/register' activeClassName='current'>Register</Link>
          </li>
          <li>
            <Link className='session-link' to='/signin' activeClassName='current'>Sign In</Link>
          </li>
          <li className='demo-link'>
            <button onClick={ () => signin({ first_name: 'Demo', last_name: 'User', email: 'demouser@gmail.com', password: 'password' })}>Demo</button>
          </li>
        </ul>
      </nav>
    </div>
    <div className='top_nav_bottom'>
      <nav className='categories'>
        <ul>
          <li>
            <Link className='all-jewelry' to='/items' activeClassName='current'>All Jewelry</Link>
          </li>
          <li>Earrings</li>
          <li>Necklaces</li>
          <li>Rings</li>
        </ul>
      </nav>
    </div>
  </header>
);

const sessionSignOutLink = (currentUser, signout) => (
  <header className='top_nav'>
    <div className='top_nav_top'>
      <nav className='logo'>
        <ul>
          <li>
            <Link to='/' activeClassName='current'>EtsAClone</Link>
          </li>
        </ul>
      </nav>
      <nav className='signout-nav'>
        <ul>
          <li>
            <span>{`${currentUser.first_name}`}</span>
          </li>
          <li>
            <button className='session-link' onClick={ signout }>Sign Out</button>
          </li>
        </ul>
      </nav>
    </div>
    <div className='top_nav_bottom'>
      <nav className='categories'>
        <ul>
          <li>
            <Link className='all-jewelry' to='/items' activeClassName='current'>All Jewelry</Link>
          </li>
          <li>Earrings</li>
          <li>Necklaces</li>
          <li>Rings</li>
        </ul>
      </nav>
    </div>
</header>
);

const TopNav = ({ currentUser, signout, signin }) => (
  currentUser ? sessionSignOutLink(currentUser, signout) : sessionSignInLinks(signin)
);

export default TopNav;
