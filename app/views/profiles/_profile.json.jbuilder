json.extract! profile, :id, :name, :address, :phone, :avatar, :created_at, :updated_at
json.url profile_url(profile, format: :json)
