require 'rails_helper'
require 'support/helpers'

feature "create new noun" do

	let(:wordsmith) { FactoryGirl.create(:wordsmith) }

	def fill_in_name
    fill_in "noun[name]", with: "Giants"
  end

  scenario "wordsmith creates a new noun" do
  	
    login_wordsmith(wordsmith.email, wordsmith.password)
    visit nouns_path
    click_link "New Noun"
    fill_in_name

    click_button "Create Noun"
    # expect(page).to have_content("Noun was successfully created.")
    expect(page).to have_link("Edit", count: 1)
  end

  scenario "only wordsmith can make a new noun" do
  	visit nouns_path
  	expect(page).to have_content("You need to sign in or sign up before continuing.")
  end	
end