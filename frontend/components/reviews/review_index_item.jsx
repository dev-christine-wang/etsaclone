import React from 'react';
import { Link } from 'react-router';
const FontAwesome = require('react-fontawesome');
var Rating = require('react-rating');

const ReviewIndexItem = ({ review }) => {
  return (
    <li>
      <div className='review'>
        <ul className='reviewer'>
          <li className='user-icon'>
            <FontAwesome className='fa-user-circle-o' name='fa-user-circle-o' aria-hidden='true' />
          </li>
          <li className='reviewed-by'>Reviewed by</li>
          <li>{ `${review.user.first_name} ${review.user.last_name}`}</li>
        </ul>
        <ul className='reviewer-review'>
          <li className='star'>
            <Rating
              empty='fa fa-star-o fa-1x'
              full='fa fa-star fa-1x'
              placeholder='fa fa-star fa-1x'
              placeholderRate={ review.rating }
              start={ 0 }
              end={ 5 }
              readonly
              />
          </li>
          <li>{ review.description }</li>
        </ul>
        <ul className='reviewer-review-date'>
          <li>{ review.review_date.slice(0, 10) }</li>
        </ul>
      </div>
    </li>
  );
};

export default ReviewIndexItem;
