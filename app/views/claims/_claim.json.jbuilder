json.extract! claim, :id, :listing_id, :user_id, :approved, :created_at, :updated_at
json.url claim_url(claim, format: :json)
