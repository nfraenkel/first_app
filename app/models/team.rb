class Team < ActiveRecord::Base
  has_many :players
  # Setup accessible (or protected) attributes for your model
  attr_accessible :games_played, :losses, :name, :wins
end
