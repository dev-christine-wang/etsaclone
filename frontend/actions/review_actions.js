import * as APIUtil from '../util/review_api_util';

export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const REMOVE_REVIEW = 'REMOVE_REVIEW';

export const receiveReviews = reviews => ({
  type: RECEIVE_REVIEWS,
  reviews
});

export const receiveReview = review => ({
  type: RECEIVE_REVIEW,
  review
});

export const removeReview = review => ({
  type: REMOVE_REVIEW,
  review
});

export const fetchReviews = itemId => dispatch => (
  APIUtil.fetchReviews(itemId).then(reviews => dispatch(receiveReviews(reviews)))
);

export const fetchReview = id => dispatch => (
  APIUtil.fetchReview(id).then(review => dispatch(receiveReview(review)))
);

export const createReview = review => dispatch => (
  APIUtil.createReview(review).then(review => dispatch(receiveReview(review)))
);

export const updateReview = review => dispatch => (
  APIUtil.updateReview(review).then(review => dispatch(receiveReview(review)))
);

export const deleteReview = id => dispatch => (
  APIUtil.deleteReview(id).then(review => dispatch(removeReview(review)))
);
