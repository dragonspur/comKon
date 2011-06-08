require "spec_helper"

describe UserRolesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/user_roles" }.should route_to(:controller => "user_roles", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/user_roles/new" }.should route_to(:controller => "user_roles", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/user_roles/1" }.should route_to(:controller => "user_roles", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/user_roles/1/edit" }.should route_to(:controller => "user_roles", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/user_roles" }.should route_to(:controller => "user_roles", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/user_roles/1" }.should route_to(:controller => "user_roles", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/user_roles/1" }.should route_to(:controller => "user_roles", :action => "destroy", :id => "1")
    end

  end
end
