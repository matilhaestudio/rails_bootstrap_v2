class Tag
  include Mongoid::Document
  has_and_belongs_to_many :candidate
  field :name, type: String
end
