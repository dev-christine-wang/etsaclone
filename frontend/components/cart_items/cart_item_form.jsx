import React from 'react';
import { Link, withRouter } from 'react-router';

class CartItemForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      value: '1'
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.redirectIfNotLoggedIn = this.redirectIfNotLoggedIn.bind(this);
    this.navigateToCartItems = this.navigateToCartItems.bind(this);
  }

  componentDidMount() {
    this.props.fetchCarts();
    this.props.fetchCartItems();
  }

  handleChange(e) {
    this.setState({value: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.redirectIfNotLoggedIn();

    const carts = this.props.carts;
    const cart = carts[carts.length - 1];
    const cartId = cart.id;
    const cartItem = {
      cart_id: cartId,
      item_id: parseInt(this.props.params.itemId),
      item_quantity: parseInt(this.state.value)
    };

    this.props.addCartItem(cartItem);
    this.navigateToCartItems();
  }

  redirectIfNotLoggedIn() {
    if (!this.props.currentUser) {
      this.props.router.push('/signin');
    }
  }

  navigateToCartItems() {
    this.props.router.push('/cart');
  }

  render() {
    if (this.props.currentUser) {
      return (
        <form className='cart-item-form' onSubmit={this.handleSubmit}>
          <ul>
            <li>Quantity</li>
            <li>
              <select value={this.state.value} onChange={this.handleChange}>
                <option value='1'>1</option>
                <option value='2'>2</option>
                <option value='3'>3</option>
                <option value='4'>4</option>
                <option value='5'>5</option>
              </select>
            </li>
            <li>
              <input className='submit-button' type='submit' value='Add to cart' />
            </li>
          </ul>
        </form>
      );
    } else {
      return null;
    }
  }
}

export default withRouter(CartItemForm);
