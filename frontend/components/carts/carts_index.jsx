import React, { Component } from 'react';
import { Link } from 'react-router';

import CartsIndexItem from './carts_index_item';

class CartsIndex extends Component {
  componentDidMount() {
    this.props.fetchCarts();
  }

  componentWillReceiveProps() {
    this.props.fetchCarts();
  }

  render() {
    let cartItems = [];
    let purchasedCarts = this.props.carts.slice(0, -1);
    purchasedCarts.forEach(cart => cartItems.push(cart.cart_items));
    cartItems = [].concat.apply([], cartItems);

    return (
      <div className='purchased-cart-items-container'>
        <div className='cart-items-details-top'>
          <h2>Purchases</h2>
          <Link className='keep-shopping-button' to={`/items`}>Keep shopping</Link>
        </div>
        <div className='cart-items-details-bottom'>
          <ul className='cart-items'>
            { cartItems.reverse().map(cartItem => <CartsIndexItem key={cartItem.cart_item_id} cartItem={cartItem} />)}
          </ul>
        </div>
      </div>
    );
  }
}

export default CartsIndex;
