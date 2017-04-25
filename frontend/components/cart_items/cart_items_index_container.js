import { connect } from 'react-redux';

import { fetchCartItems, updateCartItem } from '../../actions/cart_item_actions';
import { selectCartItems } from '../../reducers/selectors';
import CartItemsIndex from './cart_items_index';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  cartItems: selectCartItems(state)
});

const mapDispatchToProps = dispatch => ({
  fetchCartItems: () => dispatch(fetchCartItems()),
  updateCartItem: cartItem => dispatch(updateCartItem(cartItem))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CartItemsIndex);
