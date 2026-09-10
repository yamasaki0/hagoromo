json.extract! tag_bookmark, :id, :user_id, :tag_id, :created_at, :updated_at
json.url tag_bookmark_url(tag_bookmark, format: :json)
