import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import App from './app';
import Masthead from './masthead/masthead';
import ItemIndexContainer from './items/item_index_container';
import SessionFormContainer from './session_form/session_form_container';
import ItemShowContainer from './items/item_show_container';
import CartItemFormContainer from './cart_items/cart_item_form_container';
import CartItemsIndexContainer from './cart_items/cart_items_index_container';
import CartsIndexContainer from './carts/carts_index_container';

const Root = ({ store }) => {
  const _ensureSignedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;

    if (!currentUser) {
      replace('/signin');
    }
  };

  const _redirectIfSignedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  }

  return (
    <Provider store={ store }>
      <Router history={ hashHistory }>
        <Route path='/' component={ App }>
          <IndexRoute components={{ first: Masthead, second: ItemIndexContainer } } />
          <Route path='/register' component={ SessionFormContainer } onEnter={ _redirectIfSignedIn } />
          <Route path='/signin' component={ SessionFormContainer } onEnter={ _redirectIfSignedIn } />
          <Route path='/items' component={ ItemIndexContainer } />
          <Route path='/items/:itemId' components={ ItemShowContainer } />
          <Route path='/cart' component={ CartItemsIndexContainer } onEnter={ _ensureSignedIn }/>
          <Route path='/purchased_items' component={ CartsIndexContainer } onEnter={ _ensureSignedIn }/>
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
