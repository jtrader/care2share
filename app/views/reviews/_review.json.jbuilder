json.extract! review, :id, :text, :user_id, :listing_id, :created_at, :updated_at
json.url review_url(review, format: :json)
