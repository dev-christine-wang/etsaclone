import React, { Component } from 'react';
import ItemIndexItem from './item_index_item';

export class ItemCategoryIndex extends Component {
  constructor(props) {
    super(props);
    this.state = { category: null };
  }

  componentWillMount() {
    this.props.clearItems();
  }
  
  componentDidMount() {
    const categories = this.props.location.pathname.split('/');
    const category = categories[categories.length - 1];

    this.props.fetchSearchedItems(category);
    this.setState({ category });
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.location.pathname !== nextProps.location.pathname) {
      const categories = nextProps.location.pathname.split('/');
      const category = categories[categories.length - 1];

      this.props.fetchSearchedItems(category);
      this.setState({ category });
    }
  }

  render() {
    const { items } = this.props;

    if (items) {
      const sectionHeaders = { earrings: 'Earrings', necklace: 'Necklaces', ring: 'Rings' };
      const sectionHeader = sectionHeaders[this.state.category];

      return (
        <div className='all-items-index'>
          <h2>{ sectionHeader }</h2>
          <div className='all-items'>
            <ul>
              { items.map(item => <ItemIndexItem key={item.id} item={item} />)}
            </ul>
          </div>
        </div>
      )
    }

    return (
      <div></div>
    )
  }
}
