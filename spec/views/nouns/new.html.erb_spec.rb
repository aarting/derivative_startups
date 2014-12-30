require 'rails_helper'

RSpec.describe "nouns/new", :type => :view do
  before(:each) do
    assign(:noun, Noun.new(
      :name => "MyString"
    ))
  end

  it "renders new noun form" do
    render

    assert_select "form[action=?][method=?]", nouns_path, "post" do

      assert_select "input#noun_name[name=?]", "noun[name]"
    end
  end
end
