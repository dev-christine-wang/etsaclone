import React, { Component } from 'react';
import { Link } from 'react-router';
import CartItemFormContainer from '../cart_items/cart_item_form_container';
import ReviewIndexContainer from '../reviews/review_index_container';

class ItemShow extends Component {
  constructor(props) {
    super(props);
  }
  
  componentDidMount() {
    this.props.fetchItem(this.props.params.itemId);
    this.props.fetchReviews(this.props.params.itemId);
  }

  render() {
    const { item } = this.props;

    if (item) {
      return (
        <div className='item'>
          <div className='item-top'>
            <img src={ item.image } alt={ item.name } />
            <div className='item-details'>
              <ul>
                <li className='item-name'>{ item.name }</li>
                <li className='item-seller'>{ `${item.seller.first_name} ${item.seller.last_name}` }</li>
                <li className='item-price'>{ `$${item.price}.00` }</li>
                <li className='item-details-bottom'></li>
                <CartItemFormContainer />
                <li className='item-description'>{ item.description }</li>
              </ul>
            </div>
          </div>
          <div className='item-reviews'>
            <ReviewIndexContainer itemId={ item.id }/>
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
