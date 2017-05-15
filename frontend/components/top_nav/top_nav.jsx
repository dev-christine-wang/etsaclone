import React from 'react';
import { Link } from 'react-router';
import SearchFormContainer from '../search_form/search_form_container';
const FontAwesome = require('react-fontawesome');

const sessionSignInLinks = signin => (
  <header className='top_nav'>
    <div className='top_nav_top'>
      <nav className='logo'>
        <ul>
          <li>
            <Link to='/' activeClassName='current'>EtsAClone</Link>
          </li>
          <li><SearchFormContainer /></li>
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
          <li><SearchFormContainer /></li>
        </ul>
      </nav>
      <nav className='signout-nav'>
        <ul>
          <li className='user'>
            <ul>
              <li>
                <FontAwesome className='fa-user-circle-o' name='fa-user-circle-o' aria-hidden='true' />
              </li>
              <li>{`${currentUser.first_name}`}</li>
            </ul>
          </li>
          <li>
            <Link to='/' activeClassName='current'>
              <button className='session-link' onClick={ signout }>Sign Out</button>
            </Link>
          </li>
          <li>
            <Link className='cart-link' to='/cart' activeClassName='current'>
              <ul className='cart'>
                <li>
                  <FontAwesome className='fa-shopping-cart' name='fa-shopping-cart' aria-hidden='true' />
                </li>
                <li>Cart</li>
              </ul>
            </Link>
          </li>
          <li>
            <Link to='/purchased_items' activeClassName='current'>
              <ul className='purchases'>
                <li>
                  <FontAwesome className='fa-credit-card-alt' name='fa-credit-card-alt' aria-hidden='true' />
                </li>
                <li>Purchases</li>
              </ul>
            </Link>
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
