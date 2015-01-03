require 'rails_helper'

feature "generating startup" do

  scenario "the visitor clicks button to generate a startup" do
  	FactoryGirl.create(:noun, name: "Cats")
  	FactoryGirl.create(:noun, name: "Birds")
  	FactoryGirl.create(:noun, name: "Dogs")
		FactoryGirl.create(:business, name: "Facebook")
		FactoryGirl.create(:business, name: "Twitter")
		FactoryGirl.create(:business, name: "Kickstarter")

    visit root_path
    click_button "Generate Startup"

    expect(page).to have_content(/Cats|Birds|Dogs/)
    expect(page).to have_content(/Facebook|Twitter|Kickstarter/)
  end
end