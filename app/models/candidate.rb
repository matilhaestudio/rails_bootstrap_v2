class Candidate
  include Mongoid::Document
  has_and_belongs_to_many :tag
  field :name, type: String
end
