class Post 
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :images, type: String
  mount_uploader :image, ImageUploader
end
