json.extract! repost, :id, :user_id, :post_id, :created_at, :updated_at
json.url repost_url(repost, format: :json)
