import { connect } from 'react-redux';
import { addCartItem, fetchCartItems } from '../../actions/cart_item_actions';
import { selectCartItems, selectCarts } from '../../reducers/selectors';
import { fetchCarts } from '../../actions/cart_actions'
import CartItemForm from './cart_item_form';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  carts: selectCarts(state),
  cartItems: selectCartItems(state)
});

const mapDispatchToProps = dispatch => ({
  addCartItem: cartItem => dispatch(addCartItem(cartItem)),
  fetchCarts: () => dispatch(fetchCarts()),
  fetchCartItems: () => dispatch(fetchCartItems())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CartItemForm);
