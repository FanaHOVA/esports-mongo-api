class Map
  include Mongoid::Document

  field :name, type: String
  field :codename, type: String

  validates_uniqueness_of :codename

  has_many :games
end
