import React from 'react';
import { Link } from 'react-router';

const sessionSignInLinks = () => (
  <nav className='register-signin'>
    <Link to='/register' activeClassName='current'>Register</Link>
    &nbsp;
    <Link to='/signin' activeClassName='current'>Sign In</Link>
  </nav>
);

const sessionSignOutLink = (currentUser, signout) => (
  <nav className='signout'>
    <p>{`${currentUser.first_name} ${currentUser.last_name}`}</p>
    <button onClick={ signout }>Sign Out</button>
  </nav>
);

const SessionLinks = ({ currentUser, signout }) => (
  currentUser ? sessionSignOutLink(currentUser, signout) : sessionSignInLinks()
);

export default SessionLinks;
