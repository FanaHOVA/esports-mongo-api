class Team
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :twitter, type: String

  validates_uniqueness_of :name

  has_many :players
  belongs_to :game
end
