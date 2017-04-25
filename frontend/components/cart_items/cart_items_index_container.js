import { connect } from 'react-redux';

import { fetchCartItems, updateCartItem, deleteCartItem } from '../../actions/cart_item_actions';
import { createCart, updateCart } from '../../actions/cart_actions';
import { selectCartItems } from '../../reducers/selectors';
import CartItemsIndex from './cart_items_index';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  cartItems: selectCartItems(state)
});

const mapDispatchToProps = dispatch => ({
  fetchCartItems: () => dispatch(fetchCartItems()),
  updateCartItem: cartItem => dispatch(updateCartItem(cartItem)),
  deleteCartItem: id => dispatch(deleteCartItem(id)),
  createCart: cart => dispatch(createCart(cart)),
  updateCart: cart => dispatch(updateCart(cart))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CartItemsIndex);
