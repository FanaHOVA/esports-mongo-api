class Team
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :twitter, type: String

  validates_uniqueness_of :name

  has_many :players
  has_many :away_games, class_name: 'Game', inverse_of: :away_team
  has_many :home_games, class_name: 'Game', inverse_of: :home_team

  def games
    @games ||= away_games + home_games
  end
end
