json.extract! post, :id, :title, :creator, :body, :date, :message, :revision, :created_at, :updated_at
json.url post_url(post, format: :json)
