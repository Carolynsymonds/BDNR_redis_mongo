json.extract! feed_view, :id, :user, :comitts, :issues, :pulls, :versions, :gists, :gists, :created_at, :updated_at
json.url feed_view_url(feed_view, format: :json)
