require 'rails_helper'

RSpec.describe "nouns/show", :type => :view do
  before(:each) do
    @noun = assign(:noun, Noun.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
