class Player < ActiveRecord::Base
  belongs_to :team
  attr_accessible :assists, :blocks, :first, :games_played, :goals, :last, :shots, :tackles, :team_id

  validates :first, :last, presence: { :message => "is a required field, bro."}

  scope :finishers,
        where('goals > ?', 10)

  scope :play_makers,
        where('assists > ?', 8)

  scope :top_three_goals, order('goals desc').
        limit(3)

  scope :top_three_assists, order('assists desc').
      limit(3)

  def team_name
    team.name if team
  end

end
