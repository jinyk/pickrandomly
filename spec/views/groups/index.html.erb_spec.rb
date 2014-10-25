require 'rails_helper'

RSpec.describe "groups/index", :type => :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        :name => "Name",
        :slug => "Slug",
        :publically_listed => false,
        :password => "Password"
      ),
      Group.create!(
        :name => "Name",
        :slug => "Slug",
        :publically_listed => false,
        :password => "Password"
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
