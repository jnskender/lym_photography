json.extract! post, :id, :title, :content, :album_id, :created_at, :updated_at
json.url post_url(post, format: :json)