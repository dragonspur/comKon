require 'spec_helper'

describe "communities/edit.html.haml" do
  before(:each) do
    @community = assign(:community, stub_model(Community,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit community form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => communities_path(@community), :method => "post" do
      assert_select "input#community_name", :name => "community[name]"
      assert_select "textarea#community_description", :name => "community[description]"
    end
  end
end
