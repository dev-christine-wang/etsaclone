import React, { Component } from 'react';
import { Link } from 'react-router';

import ItemIndexItem from './item_index_item';

class ItemIndex extends Component {
  componentDidMount() {
    if (this.props.location.query.searchWords) {
      this.props.fetchSearchedItems(this.props.location.query.searchWords);
    } else {
      this.props.fetchItems();
    }
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.location.query.searchWords !== nextProps.location.query.searchWords) {
      if (nextProps.location.query.searchWords) {
        nextProps.fetchSearchedItems(nextProps.location.query.searchWords);
      } else {
        nextProps.fetchItems();
      }
    }
  }

  render() {
    const { items, fewItems, children } = this.props;
    let sectionHeader;

    if (this.props.location.pathname === '/') {
      sectionHeader = 'Browse our latest handmade goods';
    } else if (this.props.location.query.searchWords) {
      sectionHeader = `Results for \"${this.props.location.query.searchWords}\"`;
    } else {
      sectionHeader = 'All Jewelry';
    }

    if (this.props.location.pathname === '/') {
      return (
        <section className='section-description-preview'>
          <h2>{ sectionHeader }</h2>
          <div className='items-index'>
            <ul>
              { fewItems.map(item => <ItemIndexItem key={item.id} item={item} />)}
            </ul>
          </div>
        </section>
      );
    } else {
      return (
        <section className='section-description-all'>
          <h2 className='all-items'>{ sectionHeader }</h2>
          <div className='items-index'>
            <ul>
              { items.map(item => <ItemIndexItem key={item.id} item={item} />)}
            </ul>
          </div>
        </section>
      );
    }
  }
}

export default ItemIndex;
