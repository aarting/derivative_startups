require 'rails_helper'
require 'support/helpers'

feature "create new business" do

	let(:wordsmith) { FactoryGirl.create(:wordsmith) }

	def fill_in_name
    fill_in "business[name]", with: "Kpass"
  end

  scenario "wordsmith creates a new business" do
  	
    login_wordsmith(wordsmith.email, wordsmith.password)
    visit businesses_path
    click_link "New Business"
    fill_in_name

    click_button "Create Business"
    # expect(page).to have_content("Business was successfully created.")
    expect(page).to have_link("Edit", count: 1)
  end

  scenario "only wordsmith can make a new business" do
  	visit businesses_path
  	expect(page).to have_content("You need to sign in or sign up before continuing.")
  end	
end