class FeedView
  include Mongoid::Document
  field :title, type: String
  field :user, type: String
  field :comitts, type: String
  field :issues, type: String
  field :pulls, type: String
  field :versions, type: String
  field :gists, type: String
end

