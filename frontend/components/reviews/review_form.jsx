import React from 'react';
import { Link, withRouter } from 'react-router';
import { render } from 'react-dom';
var Rating = require('react-rating');

class ReviewForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      rating: 0,
      description: ''
    };

    this.handleRate = this.handleRate.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.navigateToCartItem = this.navigateToCartItem.bind(this);
  }

  handleRate(rate) {
    this.setState({ rating: rate});
  }

  handleChange(e) {
    this.setState({ description: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();

    const review = {
      item_id: this.props.itemId,
      rating: this.state.rating,
      description: this.state.description
    };

    this.props.createReview(review).then(this.navigateToCartItem);
  }

  navigateToCartItem() {
    this.props.router.push(`/items/${this.props.itemId}`);
  }

  render() {
    return (

      <form onSubmit={ this.handleSubmit }>
        <ul>
          <li>Rating</li>
          <li className='star'>
            <Rating
              empty='fa fa-star-o fa-1x'
              full='fa fa-star fa-1x'
              start={ 0 }
              end={ 5 }
              placeholder="fa fa-star fa-1x"
              placeholderRate={this.state.rating}
              onChange={rate => this.handleRate(rate)}
            />
          </li>
          <li>Description</li>
          <li>
            <textarea
              className='review-description'
              value={ this.state.description }
              onChange={ this.handleChange }
            />
          </li>
          <li>
            <input
              className='submit-button'
              type='submit'
              value='Add review'
            />
          </li>
        </ul>
      </form>
    );
  }
}

export default withRouter(ReviewForm);
