class Game
  include Mongoid::Document
  field :demo_download, type: String

  has_one :away_team, class_name: 'Team'
  has_one :home_team, class_name: 'Team'
  belongs_to :map
  belongs_to :tournament
end
