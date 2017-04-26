import React from 'react';
import { Link } from 'react-router';

const ReviewIndexItem = ({ review }) => {
  return (
    <li>
      <ul>
        <li>{ `${review.user.first_name} ${review.user.last_name}`}</li>
        <li>{ review.rating }</li>
        <li>{ review.description }</li>
        <li>{ review.review_date.slice(0, 10) }</li>
      </ul>
    </li>
  );
};

export default ReviewIndexItem;
