require 'rails_helper'

RSpec.describe "businesses/index", :type => :view do
  before(:each) do
    assign(:businesses, [
      Business.create!(
        :name => "Name"
      ),
      Business.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of businesses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
