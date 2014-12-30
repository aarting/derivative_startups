require 'rails_helper'

feature "signing in" do
  let(:wordsmith) {FactoryGirl.create(:wordsmith)}

  def fill_in_signin_fields
    fill_in "wordsmith[email]", with: wordsmith.email
    fill_in "wordsmith[password]", with: wordsmith.password
    click_button "Log in"
  end



  scenario "visiting the site to sign in" do
    
    visit new_wordsmith_session_path
    fill_in_signin_fields
    expect(page).to have_content("Welcome")
  end
end