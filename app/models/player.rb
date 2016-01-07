class Player
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :username, type: String
  field :twitch, type: String

  belongs_to :team
end
