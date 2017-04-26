json.extract! review, :id, :rating, :description
json.review_date review.updated_at

json.user do
  json.first_name review.user.first_name
  json.last_name review.user.last_name
end
