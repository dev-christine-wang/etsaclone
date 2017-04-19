import React from 'react';
import { Link } from 'react-router';

const sessionSignInLinks = signin => (
  <nav className='register-signin'>
    <Link to='/register' activeClassName='current'>Register</Link>
    &nbsp;
    <Link to='/signin' activeClassName='current'>Sign In</Link>
    &nbsp;
    <button onClick={ () => signin({ first_name: 'Demo', last_name: 'User', email: 'demo@gmail.com', password: 'password' })}>Demo</button>
  </nav>
);

const sessionSignOutLink = (currentUser, signout) => (
  <nav className='signout'>
    <p>{`${currentUser.first_name} ${currentUser.last_name}`}</p>
    <button onClick={ signout }>Sign Out</button>
  </nav>
);

const SessionLinks = ({ currentUser, signout, signin }) => (
  currentUser ? sessionSignOutLink(currentUser, signout) : sessionSignInLinks(signin)
);

export default SessionLinks;
