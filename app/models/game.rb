class Game < ActiveRecord::Base
  attr_accessible :team1, :team1score, :team2, :team2score
end
