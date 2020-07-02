class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :fecha, type: String
  field :contenido, type: String
  field :mensaje, type: String
  field :revision, type: Integer
end

