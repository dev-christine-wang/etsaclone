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
    this.props.fetchCartItems();
  }

  handleChange(e) {
    this.setState({value: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    this.redirectIfNotLoggedIn();

    const cartId = this.props.cartItems[0].cart_id;
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
        <form onSubmit={this.handleSubmit}>
          <label>
            Quantity
            <select value={this.state.value} onChange={this.handleChange}>
              <option value='1'>1</option>
              <option value='2'>2</option>
              <option value='3'>3</option>
              <option value='4'>4</option>
              <option value='5'>5</option>
            </select>
          </label>
          <input type='submit' value='Add to cart' />
        </form>
      );
    } else {
      return '';
    }
  }
}

export default withRouter(CartItemForm);
