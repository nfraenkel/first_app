class Team < ActiveRecord::Base
  attr_accessible :games_played, :losses, :name, :wins
end
