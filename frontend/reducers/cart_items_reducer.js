import { RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS, REMOVE_CART_ITEM } from '../actions/cart_item_actions';
import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import merge from 'lodash/merge';

const CartItemsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_CART_ITEM:
      const newCartItem = { [action.cartItem.cart_item_id]: action.cartItem };
      return merge({}, state, newCartItem);
    case RECEIVE_CART_ITEMS:
      return action.cartItems;
    case RECEIVE_CURRENT_USER:
      return {};
    case REMOVE_CART_ITEM:
      const nextState = merge({}, state);
      delete nextState[action.cartItem.cart_item_id];
      return nextState;
    default:
      return state;
  }
};

export default CartItemsReducer;
