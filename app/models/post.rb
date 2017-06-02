class Post
  include Mongoid::Document
  field :title, type: String
  field :description, type: String

  validates_email_format_of :title, disposable: true

end
