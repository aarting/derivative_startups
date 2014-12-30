require 'rails_helper'

feature "generating startup" do
  scenario "the visitor clicks button to generate a startup" do
    visit root_path
    click_button "Generate Startup"

    expect(page).to have_content("Now go build it...")
  end
end