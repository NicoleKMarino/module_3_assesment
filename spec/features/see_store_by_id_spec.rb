require 'rails_helper'

RSpec.feature "user can see specific store" do
  scenario "visits path with id and gets store info" do

    visit store_path(id:2953)

    expect(page).to have_content "Flatiron Crossing Mall"
    expect(page).to have_content "1 W Flatiron Crossing Dr Broomfield CO 80021"
  end
end
