require 'rails_helper'

RSpec.describe "nouns/edit", :type => :view do
  before(:each) do
    @noun = assign(:noun, Noun.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit noun form" do
    render

    assert_select "form[action=?][method=?]", noun_path(@noun), "post" do

      assert_select "input#noun_name[name=?]", "noun[name]"
    end
  end
end
