import React, { Component } from 'react';
import { Link } from 'react-router';

class ItemShow extends Component {
  componentDidMount() {
    this.props.fetchItem(this.props.params.itemId);
  }

  render() {
    const { item } = this.props;

    if (item) {
      return (
        <div className='item-show'>
          <div className='item-show-image'>
            <img src={ item.image } alt={ item.name } />
          </div>
          <div className='item-show-details'>
            <ul>
              <li>{ item.name }</li>
              <li className='item-show-seller'>{ `${item.seller.first_name} ${item.seller.last_name}` }</li>
              <li className='item-show-price'>{ `$${item.price}.00` }</li>
              <li>{ item.description }</li>
            </ul>
          </div>
        </div>
      );
    } else {
      return (
        <div></div>
      );
    }
  }
}

export default ItemShow;
