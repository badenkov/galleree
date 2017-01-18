json.extract! post, :id, :description, :picture, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)