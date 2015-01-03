require 'rails_helper'

feature "generating startup" do

  scenario "the visitor clicks button to generate a startup" do
  	noun = FactoryGirl.create(:noun)
		business = FactoryGirl.create(:business)

    visit root_path
    click_button "Generate Startup"

    expect(page).to have_content(noun.name)
    expect(page).to have_content(business.name)
  end
end