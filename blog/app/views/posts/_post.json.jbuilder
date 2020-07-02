json.extract! post, :id, :title, :body, :fecha, :contenido, :mensaje, :revision, :created_at, :updated_at
json.url post_url(post, format: :json)
