import React from 'react';
import { Link } from 'react-router';

class CartItemsIndexItem extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      value: this.props.cartItem.item_quantity
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount() {
    this.props.fetchCartItems();
  }

  handleChange(e) {
    this.setState({value: e.target.value});
    this.props.updateCartItem({ id: this.props.cartItem.cart_item_id, cart_id: this.props.cartItem.cart_id, item_id: this.props.cartItem.item_id, item_quantity: e.target.value});
  }

  handleClick() {
    this.props.deleteCartItem(this.props.cartItem.cart_item_id);
  }

  render() {
    if (this.props.cartItem) {
      return (
        <li className='cart-item'>
          <ul>
            <li>
              <Link to={ `/items/${this.props.cartItem.item_id}` }>
                <img className='cart-item-image' src={ this.props.cartItem.item_image } alt={ this.props.cartItem.item_name } />
              </Link>
            </li>
          </ul>
          <ul className='cart-item-details'>
            <li className='cart-item-name'>
              { this.props.cartItem.item_name }
            </li>
            <li className='cart-item-seller'>
              { `${this.props.cartItem.item_seller.first_name} ${this.props.cartItem.item_seller.last_name}` }
            </li>
            <li className='remove-button'>
              <button onClick={this.handleClick}>
                <input type='submit' value='Remove' />
              </button>
            </li>
          </ul>
          <ul>
            <li className='cart-item-quantity'>
              <form>
                <select value={this.state.value} onChange={this.handleChange}>
                  <option value='1'>1</option>
                  <option value='2'>2</option>
                  <option value='3'>3</option>
                  <option value='4'>4</option>
                  <option value='5'>5</option>
                </select>
              </form>
            </li>
          </ul>
          <ul>
            <li className='cart-item-price'>
              { `$${this.props.cartItem.item_price}.00` }
            </li>
          </ul>
        </li>
      );
    } else {
      return (
        <div></div>
      );
    }
  }
}

export default CartItemsIndexItem;
