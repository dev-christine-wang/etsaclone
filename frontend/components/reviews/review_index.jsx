import React, { Component } from 'react';
import { Link } from 'react-router';
var Rating = require('react-rating');

import ReviewIndexItem from './review_index_item';

class ReviewIndex extends Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchReviews(this.props.itemId);
  }

  render() {
    const { reviews } = this.props;

    const reviewCount = reviews.length;
    let totalRatings = 0;
    reviews.map(review => totalRatings += review.rating);
    const avgRating = totalRatings / reviewCount;

    return (
      <section className='reviews-section'>
        <ul className='avg-rating'>
          <li className='review-header'>Reviews</li>
          <li className='avg-stars'>
            <Rating
              empty='fa fa-star-o fa-1x'
              full='fa fa-star fa-1x'
              placeholder='fa fa-star fa-1x'
              placeholderRate={ avgRating }
              start={ 0 }
              end={ 5 }
              readonly
              />
          </li>
          <li className='rating-count'>{ `(${reviewCount})` }</li>
        </ul>
        <ul className='reviews'>
          { reviews.reverse().map(review => <ReviewIndexItem key={review.id} review={review} />)}
        </ul>
      </section>
    );
  }
}

export default ReviewIndex;
