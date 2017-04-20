import React, { Component } from 'react';
import ItemIndexItem from './item_index_item';

class ItemIndex extends Component {
  componentDidMount() {
    this.props.fetchItems();
  }

  render() {
    const { items, children } = this.props;

    return (
      <section>
        <h2 className='section-description' id='font'>Browse our latest handmade goods</h2>
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
