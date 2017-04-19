import React from 'react';
import { Link } from 'react-router';

const sessionSignInLinks = signin => (
  <header className='top_nav'>
    <nav className='logo'>
      <ul>
        <li>
          <Link to='/' activeClassName='current'>EtsAClone</Link>
        </li>
      </ul>
    </nav>
    <nav className='register-signin'>
      <ul>
        <li>
          <Link to='/register' activeClassName='current'>Register</Link>
        </li>
        <li className='signin-link'>
          <Link to='/signin' activeClassName='current'>Sign In</Link>
        </li>
        <li>
          <button onClick={ () => signin({ first_name: 'Demo', last_name: 'User', email: 'demo@gmail.com', password: 'password' })}>Demo</button>
        </li>
      </ul>
    </nav>
  </header>
);

const sessionSignOutLink = (currentUser, signout) => (
  <header className='top_nav'>
    <nav className='logo'>
      <ul>
        <li>
          <Link to='/' activeClassName='current'>EtsAClone</Link>
        </li>
      </ul>
    </nav>
    <nav className='signout'>
      <p>{`${currentUser.first_name} ${currentUser.last_name}`}</p>
      <button onClick={ signout }>Sign Out</button>
    </nav>
</header>
);

const TopNav = ({ currentUser, signout, signin }) => (
  currentUser ? sessionSignOutLink(currentUser, signout) : sessionSignInLinks(signin)
);

export default TopNav;
