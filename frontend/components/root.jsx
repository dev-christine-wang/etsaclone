import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import App from './app';
import Masthead from './masthead/masthead'
import SessionFormContainer from './session_form/session_form_container';

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
          <IndexRoute component={ Masthead } />
          <Route path='/register' component={ SessionFormContainer } onEnter={ _redirectIfSignedIn } />
          <Route path='/signin' component={ SessionFormContainer } onEnter={ _redirectIfSignedIn } />
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;
