import React from 'react';
import { Link } from 'react-router';

const ItemIndexItem = ({ item }) => {
  return (
    <li className='item-index'>
      <ul>
        <li>
            <Link to={ `/items/${item.id}` }>
              <img src={ item.image } alt={ item.name } />
            </Link>
        </li>
        <li>{ `${item.seller.first_name} ${item.seller.last_name}` }</li>
        <li>{ item.name }</li>
        <li>{ item.price }</li>
      </ul>
    </li>
  );
};

export default ItemIndexItem;
