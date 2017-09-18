json.extract! album, :id, :title, :location, :cover_photo, :created_at, :updated_at
json.url album_url(album, format: :json)
