import React from 'react';
import { Link } from 'react-router';

const ItemIndexItem = ({ item }) => {
  return (
    <li className='item-index-item'>
      <div className='item-image'>
          <Link to={ `/items/${item.id}` }>
            <img src={ item.image } alt={ item.name } />
          </Link>
      </div>
      <div className='item-name'>{ item.name }</div>
      <ul className='item-details'>
        <li className='item-seller'>{ `${item.seller.first_name} ${item.seller.last_name}` }</li>
        <li className='item-price'>{ `$${item.price}.00` }</li>
      </ul>
    </li>
  );
};

export default ItemIndexItem;
