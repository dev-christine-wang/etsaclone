import React, { Component } from 'react';
import { Link } from 'react-router';

import ItemIndexItem from './item_index_item';

class ItemIndex extends Component {
  componentDidMount() {
    this.props.fetchItems();
  }

  render() {
    const { items, children } = this.props;

    return (
      <section>
        <h2 className='section-description'>
          <Link to='/items' activeClassName='current'>
            Browse our latest handmade goods
          </Link>
        </h2>
        <div className='items-index'>
          <ul>
            { items.map(item => <ItemIndexItem key={item.id} item={item} />)}
          </ul>
        </div>
      </section>
    );
  }
}

export default ItemIndex;
