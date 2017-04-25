import React, { Component } from 'react';
import { Link, withRouter } from 'react-router';

import CartItemsIndexItem from './cart_items_index_item';

class CartItemsIndex extends Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.createNewCart = this.createNewCart.bind(this);
    this.navigateToPurchasedItems = this.navigateToPurchasedItems.bind(this);
  }

  componentDidMount() {
    this.props.fetchCartItems();
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.updateCart({id: this.props.cartItems[0].cart_id, purchased: true}).then(this.createNewCart).then(this.navigateToPurchasedItems);
  }

  createNewCart() {
    this.props.createCart({ user_id: this.props.currentUser.id });
  }

  navigateToPurchasedItems() {
    this.props.router.push('/purchased_items');
  }

  render() {
    const cartItems = this.props.cartItems;
    let totalPrice = 0;
    cartItems.map(cartItem => totalPrice += (cartItem.item_price * cartItem.item_quantity));

    if (cartItems.length === 0) {
      return (
        <h2>Cart Empty</h2>
      );
    } else {
      return (
        <div className='cart-items-container'>
          <h2>{`${cartItems.length} item(s) in your cart`}</h2>
          <div>
            <ul className='cart-items'>
              { cartItems.map(cartItem => <CartItemsIndexItem key={ cartItem.cart_item_id } cartItem={ cartItem } updateCartItem={ this.props.updateCartItem } deleteCartItem={ this.props.deleteCartItem } fetchCartItems={ this.props.fetchCartItems }/>)}
            </ul>
          </div>
          <div>
            <ul>
              <li>Item(s) total</li>
              <li>{ `$${totalPrice}.00` }</li>
            </ul>
          </div>
          <div>
            <form onSubmit={this.handleSubmit}>
              <input type='submit' value='Make a purchase' />
            </form>
          </div>
        </div>
      );
    }
  }
}

export default withRouter(CartItemsIndex);
