require 'spec_helper'

describe Player do
  it "should require a player's first and last name" do
    player = Player.create
    player.should_not be_valid
    player.first = "Nate"
    player.last = 'Dawg'
    player.should be_valid
  end

  it "should save its position" do
    subject.position = "striker"
    subject.save
    subject.position.should == "striker"
  end

end
