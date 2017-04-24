import React, { Component } from 'react';
import { Link } from 'react-router';

import CartsIndexItem from './carts_index_item';

class CartsIndex extends Component {
  componentDidMount() {
    this.props.fetchCarts();
  }

  render() {
    let cartItems = [];
    carts.forEach(cart => cartItems.push(cart.cart_items));

    return (
      <div>
        <ul>
          { cartItems.map(cartItem => <CartsIndexItem key={cartItem.cart_item_id} cartItem={cartItem} />)}
        </ul>
      </div>
    );
  }
}

export default CartsIndex;