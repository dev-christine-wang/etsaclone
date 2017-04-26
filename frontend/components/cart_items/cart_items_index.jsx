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
        <div className='cart-items-container'>
          <div className='cart-items-top'>
            <h2>Cart Empty</h2>
            <Link className='keep-shopping-button-empty' to={`/items`}>Keep shopping</Link>
          </div>
        </div>
      );
    } else {
      return (
        <div className='cart-items-container'>
          <div className='cart-items-top'>
            <h2>{`${cartItems.length} item(s) in your cart`}</h2>
            <Link className='keep-shopping-button' to={`/items`}>Keep shopping</Link>
          </div>
          <div className='cart-items-box'>
            <div>
              <ul className='cart-items'>
                { cartItems.map(cartItem => <CartItemsIndexItem key={ cartItem.cart_item_id } cartItem={ cartItem } updateCartItem={ this.props.updateCartItem } deleteCartItem={ this.props.deleteCartItem } fetchCartItems={ this.props.fetchCartItems }/>)}
              </ul>
            </div>
            <div className='cart-details-flex-right'>
              <ul className='items-total'>
                <li>{`Item(s) total:`}</li>
                <li className='amount'>{ `$${totalPrice}.00` }</li>
              </ul>
              <form onSubmit={this.handleSubmit}>
                <input className='purchase-button' type='submit' value='Make a purchase' />
              </form>
            </div>
          </div>
        </div>
      );
    }
  }
}

export default withRouter(CartItemsIndex);
