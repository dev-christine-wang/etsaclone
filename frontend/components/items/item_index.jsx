import React, { Component } from 'react';
import { Link } from 'react-router';

import ItemIndexItem from './item_index_item';

class ItemIndex extends Component {
  componentDidMount() {
    this.props.fetchItems();
  }

  render() {
    const { items, children } = this.props;

    if (this.props.location.pathname.slice(1) === 'items') {
      return (
        <section className='section-description-all'>
          <h2 className='all-items'>All Jewelry</h2>
          <div className='items-index'>
            <ul>
              { items.reverse().map(item => <ItemIndexItem key={item.id} item={item} />)}
            </ul>
          </div>
        </section>
      );
    } else {
      let itemPreview = items.slice(items.length - 14);

      return (
        <section>
          <h2 className='section-description-preview'>
            <Link to='/items' activeClassName='current'>
              Browse our latest handmade goods
            </Link>
          </h2>
          <div className='items-index'>
            <ul>
              { itemPreview.reverse().map(item => <ItemIndexItem key={item.id} item={item} />)}
            </ul>
          </div>
        </section>
      );
    }
  }
}

export default ItemIndex;
