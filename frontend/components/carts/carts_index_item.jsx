import React from 'react';
import { Link } from 'react-router';

const CartsIndexItem = ({ cartItem }) => {
  return (
    <li className='cart-item'>
      <ul>
        <li>
          <Link to={ `/items/${cartItem.item_id}` }>
            <img className='cart-item-image'src={ cartItem.item_image } alt={ cartItem.item_name } />
          </Link>
        </li>
      </ul>
      <ul className='cart-item-details'>
        <li className='cart-item-name'>
          { cartItem.item_name }
        </li>
        <li className='cart-item-seller'>
          { `${cartItem.item_seller.first_name} ${cartItem.item_seller.last_name}` }
        </li>
        <li className='cart-item-quantity'>
          { cartItem.item_quantity }
        </li>
        <li className='cart-item-price'>
          { `$${cartItem.item_price}.00` }
        </li>
        <li className='cart-item-purchased'>
          { cartItem.item_updated_date_time.slice(0, 10) }
        </li>
      </ul>
    </li>
  );
};

export default CartsIndexItem;
