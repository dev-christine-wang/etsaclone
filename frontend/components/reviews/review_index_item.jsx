import React from 'react';
import { Link } from 'react-router';
const FontAwesome = require('react-fontawesome');
var Rating = require('react-rating');

const ReviewIndexItem = ({ review }) => {
  return (
    <li className='review'>
      <div className='reviewer'>
        <div className='user-icon'>
          <FontAwesome className='fa-user-circle-o' name='fa-user-circle-o' aria-hidden='true' />
        </div>
        <p className='reviewed-by'>Reviewed by</p>
        <p className='reviewer-name'>{ `${review.user.first_name} ${review.user.last_name}`}</p>
      </div>
      <div className='reviewer-review'>
        <Rating
          className='star'
          empty='fa fa-star-o fa-1x'
          full='fa fa-star fa-1x'
          placeholder='fa fa-star fa-1x'
          placeholderRate={ review.rating }
          start={ 0 }
          end={ 5 }
          readonly />
        <p>{ review.description }</p>
      </div>
      <div className='reviewer-review-date'>
        { review.review_date.slice(0, 10) }
      </div>
    </li>
  );
};

export default ReviewIndexItem;
