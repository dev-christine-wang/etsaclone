import React from 'react';
import { Link } from 'react-router';
const FontAwesome = require('react-fontawesome');
import SearchFormContainer from '../search_form/search_form_container';

export const TopNavTop = ({ signin, currentUser, signout }) => {
  if (signin) {
    const demoUserCredentials = { first_name: 'Demo', last_name: 'User', email: 'demouser@gmail.com', password: 'password' };

    return (
      <div className='top-nav-top'>
        <nav className='logo'>
          <Link to='/' activeClassName='current'>EtsAClone</Link>
          <div className='search-form-top'><SearchFormContainer /></div>
        </nav>
        <nav className='register-signin-nav'>
          <Link className='register-link' to='/register' activeClassName='current'>Register</Link>
          <Link className='session-link' to='/signin' activeClassName='current'>Sign In</Link>
          <button className='demo-link' onClick={ () => signin(demoUserCredentials) }>Demo</button>
        </nav>
      </div>
    )
  }

  return (
    <div className='top-nav-top'>
      <nav className='logo'>
        <Link to='/' activeClassName='current'>EtsAClone</Link>
        <div className='search-form-top'><SearchFormContainer /></div>
      </nav>
      <nav className='signout-nav'>
        <div className='user'>
          <FontAwesome className='fa-user-circle-o' name='fa-user-circle-o' aria-hidden='true' />
          <p>{`${currentUser.first_name}`}</p>
        </div>
        <Link to='/' activeClassName='current'>
          <button className='session-link' onClick={ signout }>Sign Out</button>
        </Link>
        <Link className='cart-link' to='/cart' activeClassName='current'>
          <div className='cart'>
            <FontAwesome className='fa-shopping-cart' name='fa-shopping-cart' aria-hidden='true' />
            <p>Cart</p>
          </div>
        </Link>
        <Link to='/purchased_items' activeClassName='current'>
          <div className='purchases'>
            <FontAwesome className='fa-credit-card-alt' name='fa-credit-card-alt' aria-hidden='true' />
            <p>Purchases</p>
          </div>
        </Link>
      </nav>
    </div>
  )
};
