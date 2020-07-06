class Post
  include Mongoid::Document
  field :title, type: String
  field :creator, type: String
  field :body, type: String
  field :date, type: String
  field :message, type: String
  field :revision, type: Integer
end

