import { connect } from 'react-redux';
import { addCartItem, fetchCartItems } from '../../actions/cart_item_actions';
import { selectCartItems } from '../../reducers/selectors';
import CartItemForm from './cart_item_form';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  cartItems: selectCartItems(state)
});

const mapDispatchToProps = dispatch => ({
  addCartItem: cartItem => dispatch(addCartItem(cartItem)),
  fetchCartItems: () => dispatch(fetchCartItems())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CartItemForm);
