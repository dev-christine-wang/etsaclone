import React from 'react';
import { Link } from 'react-router';

const ItemIndexItem = ({ item }) => {
  return (
    <li className='item-index-item'>
      <ul>
        <li className='item-image'>
            <Link to={ `/items/${item.id}` }>
              <img src={ item.image } alt={ item.name } />
            </Link>
        </li>
        <li className='item-name'>{ item.name }</li>
        <ul className='item-details'>
          <li className='item-seller'>{ `${item.seller.first_name} ${item.seller.last_name}` }</li>
          <li className='item-price'>{ `$${item.price}.00` }</li>
        </ul>
      </ul>
    </li>
  );
};

export default ItemIndexItem;
