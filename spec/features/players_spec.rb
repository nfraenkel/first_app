require 'spec_helper'

describe 'Adding a player' do
  fixtures :users, :teams

  before do
    sign_in
  end


  it 'requires a last name' do
    visit players_path
    click_link "New Player"
    fill_in "First", with: "Nate"
    select "Raiders", from: "Team"
    click_button "Create Player"
    error_message = "Last is a required field, bro."
    page.should have_content(error_message)
  end
end
