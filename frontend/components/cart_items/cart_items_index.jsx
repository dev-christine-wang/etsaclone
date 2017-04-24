import React, { Component } from 'react';
import { Link } from 'react-router';

import CartItemsIndexItem from './cart_items_index_item';

class CartItemsIndex extends Component {
  componentDidMount() {
    this.props.fetchCartItems();
  }

  render() {
    const cartItems = this.props.cartItems;

    if (cartItems.length === 0) {
      return (
        <h2>Cart Empty</h2>
      );
    } else {
      return (
        <div className='cart-items-container'>
          <h2>{`${cartItems.length} items in your cart`}</h2>
          <ul className='cart-items'>
            { cartItems.map(cartItem => <CartItemsIndexItem key={cartItem.cart_item_id} cartItem={cartItem} />)}
          </ul>
        </div>
      );
    }
  }
}

export default CartItemsIndex;
