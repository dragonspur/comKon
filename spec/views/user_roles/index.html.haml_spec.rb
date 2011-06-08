require 'spec_helper'

describe "user_roles/index.html.haml" do
  before(:each) do
    assign(:user_roles, [
      stub_model(UserRole,
        :user_id => 1,
        :role_id => 1
      ),
      stub_model(UserRole,
        :user_id => 1,
        :role_id => 1
      )
    ])
  end

  it "renders a list of user_roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
