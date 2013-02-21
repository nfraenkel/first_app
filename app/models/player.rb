class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :assists, :blocks, :first, :games_played, :goals, :last, :shots, :tackles

  validates :first, :last, presence: { :message => "is a required field, bro."}

  def team_name
    team.name if team
  end

end
