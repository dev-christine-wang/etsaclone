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
      <form className='review-form' onSubmit={ this.handleSubmit }>
        <p>Rating</p>
        <Rating
          className='star'
          empty='fa fa-star-o fa-1x'
          full='fa fa-star fa-1x'
          placeholder='fa fa-star fa-1x'
          placeholderRate={this.state.rating}
          start={ 0 }
          end={ 5 }
          onChange={rate => this.handleRate(rate)} />
        <p>Description</p>
        <textarea
          className='review-description'
          value={ this.state.description }
          onChange={ this.handleChange } />
        <input
          className='submit-button'
          type='submit'
          value='Submit review' />
      </form>
    );
  }
}

export default withRouter(ReviewForm);
