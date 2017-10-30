import React from 'react';
import { TopNavTop } from './top_nav_top.jsx';
import { TopNavMiddle } from './top_nav_middle.jsx';
import { TopNavBottom } from './top_nav_bottom.jsx';

const sessionSignInLinks = signin => (
  <header className='top-nav'>
    <TopNavTop signin={ signin } />
    <TopNavMiddle />
    <TopNavBottom />
  </header>
);

const sessionSignOutLink = (currentUser, signout) => (
  <header className='top-nav'>
    <TopNavTop currentUser={ currentUser } signout={ signout } />
    <TopNavMiddle />
    <TopNavBottom />
  </header>
);

const TopNav = ({ currentUser, signout, signin }) => (
  currentUser ? sessionSignOutLink(currentUser, signout) : sessionSignInLinks(signin)
);

export default TopNav;
