import * as APIUtil from '../util/cart_item_api_util';

export const RECEIVE_CART_ITEM = 'RECEIVE_CART_ITEM';
export const RECEIVE_CART_ITEMS = 'RECEIVE_CART_ITEMS';

export const receiveCartItem = cartItem => ({
  type: RECEIVE_CART_ITEM,
  cartItem
});

export const receiveCartItems = cartItems => ({
  type: RECEIVE_CART_ITEMS,
  cartItems
});

export const addCartItem = cartItem => dispatch => (
  APIUtil.addCartItem(cartItem).then(cartItem => dispatch(receiveCartItem(cartItem)))
);

export const fetchCartItems = () => dispatch => (
  APIUtil.fetchCartItems().then(cartItems => dispatch(receiveCartItems(cartItems)))
);

export const updateCartItem = cartItem => dispatch => (
  APIUtil.updateCartItem(cartItem).then(cartItem => dispatch(receiveCartItem(cartItem)))
);
