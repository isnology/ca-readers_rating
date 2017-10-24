json.extract! review, :id, :user_id, :book_id, :review, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
