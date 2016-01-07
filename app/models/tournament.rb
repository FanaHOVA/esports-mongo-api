class Tournament
  include Mongoid::Document
  field :name, type: String

  has_one :winner, class_name: 'Team'
  has_one :runner_up, class_name: 'Team'
  has_many :games
end
