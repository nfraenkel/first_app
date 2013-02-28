require 'spec_helper'

describe 'Adding a player' do
  fixtures :users

  before do
    sign_in
  end


  it 'requires a last name' do
    visit players_path
    click_link "New Player"
    fill_in "First", with: "Nate"
    fill_in "Team", with: "Best Team Eva"
    click_button "Create Player"

    error_message = "Last name is a required field, bro."
    page.should have_content(error_message)
  end
end
