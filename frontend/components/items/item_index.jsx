import React, { Component } from 'react';
import { Link } from 'react-router';

import ItemIndexItem from './item_index_item';

class ItemIndex extends Component {
  constructor(props) {
    super(props);
  }
  
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
        <div className='latest-items-index'>
          <h2>{ sectionHeader }</h2>
          <div className='latest-items'>
            <ul>
              { fewItems.map(item => <ItemIndexItem key={item.id} item={item} />)}
            </ul>
          </div>
        </div>
      );
    } else {
      return (
        <div className='all-items-index'>
          <h2>{ sectionHeader }</h2>
          <div className='all-items'>
            <ul>
              { items.map(item => <ItemIndexItem key={item.id} item={item} />)}
            </ul>
          </div>
        </div>
      );
    }
  }
}

export default ItemIndex;
