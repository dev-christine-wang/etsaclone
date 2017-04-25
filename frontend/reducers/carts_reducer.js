import { RECEIVE_CART, RECEIVE_CARTS } from '../actions/cart_actions';
import merge from 'lodash/merge';

const CartsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_CART:
      const newCart = { [action.cart.id]: action.cart };
      return merge({}, state, newCart);
    case RECEIVE_CARTS:
      return action.carts;
    default:
      return state;
  }
};

export default CartsReducer;
