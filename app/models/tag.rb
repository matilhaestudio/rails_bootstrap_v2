class Tag
  include Mongoid::Document
  has_and_belongs_to_many :candidate
  has_and_belongs_to_many :job
  field :name, type: String
end
