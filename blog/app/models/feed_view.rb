class FeedView
  include Mongoid::Document
  field :user, type: String
  field :comitts, type: String
  field :issues, type: String
  field :pulls, type: String
  field :versions, type: String
  field :gists, type: String
  field :date, type: String
end

