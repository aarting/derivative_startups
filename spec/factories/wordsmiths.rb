FactoryGirl.define do
  factory :wordsmith do
    email { Faker::Internet.email }
  	password {Devise.friendly_token.first(8)}
  end

end
