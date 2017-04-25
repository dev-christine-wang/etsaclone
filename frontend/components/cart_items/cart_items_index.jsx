import React, { Component } from 'react';
import { Link } from 'react-router';

import CartItemsIndexItem from './cart_items_index_item';

class CartItemsIndex extends Component {
  componentDidMount() {
    this.props.fetchCartItems();
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
              { cartItems.map(cartItem => <CartItemsIndexItem key={ cartItem.cart_item_id } cartItem={ cartItem } updateCartItem={ this.props.updateCartItem } />)}
            </ul>
          </div>
          <div>
            <ul>
              <li>Item(s) total</li>
              <li>{ `$${totalPrice}.00` }</li>
            </ul>
          </div>
        </div>
      );
    }
  }
}

export default CartItemsIndex;
