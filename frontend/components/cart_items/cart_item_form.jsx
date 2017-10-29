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
  }

  handleChange(e) {
    this.setState({ value: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.redirectIfNotLoggedIn();

    if (this.props.currentUser) {
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
    return (
      <form className='cart-item-form' onSubmit={this.handleSubmit}>
        <p>Quantity</p>
        <select value={this.state.value} onChange={this.handleChange}>
          <option value='1'>1</option>
          <option value='2'>2</option>
          <option value='3'>3</option>
          <option value='4'>4</option>
          <option value='5'>5</option>
        </select>
        <input
          type='submit'
          value='Add to cart' />
      </form>
    );
  }
}

export default withRouter(CartItemForm);
