require 'rails_helper'

RSpec.feature "user can search by zipcode" do
  scenario "types in zip and get's results" do

    visit root_path

    fill_in 'search stores by zipcode', with: "80202"
    click_button 'search'

    expect(page).to have_content "17 Total Stores"
    expect(page).to have_content "Best Buy Mobile"
  end
end
