import React, { Component } from 'react';
import { Link } from 'react-router';

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

    return (
      <section>
        <h2 className='review-header'>Reviews</h2>
        <ul className='reviews'>
          { reviews.reverse().map(review => <ReviewIndexItem key={review.id} review={review} />)}
        </ul>
      </section>
    );
  }
}

export default ReviewIndex;
