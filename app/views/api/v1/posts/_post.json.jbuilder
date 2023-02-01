json.extract! post, :id, :developer_user_id, :title, :body, :created_at, :updated_at
json.url api_v1_post_url(post, format: :json)
