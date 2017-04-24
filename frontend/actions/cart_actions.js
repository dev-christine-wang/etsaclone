import * as APIUtil from '../util/cart_api_util';

export const RECEIVE_CARTS = 'RECEIVE_CARTS';

export const receiveCarts = carts => ({
  type: RECEIVE_CARTS,
  carts
});

export const fetchCarts = () => dispatch => (
  APIUtil.fetchCarts().then(carts => dispatch(receiveCarts(carts)))
);
