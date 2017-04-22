import React, { Component } from 'react';
import { Link } from 'react-router';

class ItemShow extends Component {
  componentDidMount() {
    this.props.fetchItem(this.props.params.itemId);
  }

  render() {
    const { item } = this.props;

    return (
      <div>
        <ul>
          <li>
            <img src={ item.image } alt={ item.name } />
          </li>
          <li>{ item.name }</li>
          <li>{ `$${item.price}.00` }</li>
          <li>{ item.description }</li>
        </ul>
      </div>
    );
  }
}

export default ItemShow;
