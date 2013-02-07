class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :assists, :blocks, :first, :games_played, :goals, :last, :shots, :tackles
end
