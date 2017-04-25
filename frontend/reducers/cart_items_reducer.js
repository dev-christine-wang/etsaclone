import { RECEIVE_CART_ITEM, RECEIVE_CART_ITEMS } from '../actions/cart_item_actions';
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
    default:
      return state;
  }
};

export default CartItemsReducer;
