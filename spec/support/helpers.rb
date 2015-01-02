module DerivativeStartups
  module Features
    module Authentication
      def login_wordsmith(email, password)
        visit new_wordsmith_session_path
        fill_in("wordsmith[email]", with: email)
        fill_in("wordsmith[password]", with: password)
        click_on("Log in")
      end
    end
  end
end

RSpec.configure do |config|
  config.include DerivativeStartups::Features::Authentication, type: :feature
end