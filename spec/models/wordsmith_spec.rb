require 'rails_helper'

RSpec.describe Wordsmith, :type => :model do
  describe "validations" do
    it { should validate_presence_of :email }
    it 'should validate email format' do
    	wordsmith = FactoryGirl.build(:wordsmith, email: 'fran.gmail.com')
    	expect(wordsmith).to_not be_valid
    end
  end
end
