require 'rails_helper'

RSpec.describe "groups/edit", :type => :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :name => "MyString",
      :slug => "MyString",
      :publically_listed => false,
      :password => "MyString"
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do

      assert_select "input#group_name[name=?]", "group[name]"

      assert_select "input#group_slug[name=?]", "group[slug]"

      assert_select "input#group_publically_listed[name=?]", "group[publically_listed]"

      assert_select "input#group_password[name=?]", "group[password]"
    end
  end
end
