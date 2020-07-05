json.extract! feed_view, :id, :title, :user, :comitts, :issues, :pulls, :versions, :gists, :created_at, :updated_at
json.url feed_view_url(feed_view, format: :json)
