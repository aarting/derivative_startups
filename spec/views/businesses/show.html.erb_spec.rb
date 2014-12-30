require 'rails_helper'

RSpec.describe "businesses/show", :type => :view do
  before(:each) do
    @business = assign(:business, Business.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
