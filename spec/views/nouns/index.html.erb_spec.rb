require 'rails_helper'

RSpec.describe "nouns/index", :type => :view do
  before(:each) do
    assign(:nouns, [
      Noun.create!(
        :name => "Name"
      ),
      Noun.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of nouns" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
