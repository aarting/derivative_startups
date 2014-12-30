require 'rails_helper'

feature "signing in" do
  let(:wordsmith) {FactoryGirl.create(:wordsmith, password: 'imsupersecure')}

  def fill_in_signin_fields
    fill_in "wordsmith[email]", with: wordsmith.email
    fill_in "wordsmith[password]", with: 'imsupersecure'
    click_button "Sign in"
  end



  scenario "visiting the site to sign in" do
    
    visit "/sign_in"
    fill_in_signin_fields
    expect(page).to have_content("Signed in successfully.")
  end
end