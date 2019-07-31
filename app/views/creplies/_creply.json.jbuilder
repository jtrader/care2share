json.extract! creply, :id, :text, :user_id, :comment_id, :created_at, :updated_at
json.url creply_url(creply, format: :json)
