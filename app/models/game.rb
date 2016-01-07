class Game
  include Mongoid::Document
  field :demo_download, type: String

  belongs_to :away_team, class_name: 'Team', inverse_of: :away_games
  belongs_to :home_team, class_name: 'Team', inverse_of: :home_games
  belongs_to :map
  belongs_to :tournament
end
