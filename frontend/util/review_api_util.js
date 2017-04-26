export const fetchReviews = itemId => {
  return $.ajax({
    method: 'GET',
    url: `api/items/${itemId}/reviews`,
  });
};

export const fetchReview = id => {
  return $.ajax({
    method: 'GET',
    url: `api/reviews/${id}`
  });
};

export const createReview = review => {
  return $.ajax({
    method: 'POST',
    url: 'api/reviews',
    data: { review }
  });
};

export const updateReview = review => {
  return $.ajax({
    method: 'PATCH',
    url: `api/reviews/${review.id}`,
    data: { review }
  });
};

export const deleteReview = id => {
  return $ajax({
    method: 'DELETE',
    url: `api/reviews/${review.id}`
  });
};
