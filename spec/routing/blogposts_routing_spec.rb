require "spec_helper"

describe BlogpostsController do
  describe "routing" do

    it "routes to #index" do
      get("/blogposts").should route_to("blogposts#index")
    end

    it "routes to #new" do
      get("/blogposts/new").should route_to("blogposts#new")
    end

    it "routes to #show" do
      get("/blogposts/1").should route_to("blogposts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blogposts/1/edit").should route_to("blogposts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blogposts").should route_to("blogposts#create")
    end

    it "routes to #update" do
      put("/blogposts/1").should route_to("blogposts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blogposts/1").should route_to("blogposts#destroy", :id => "1")
    end

  end
end
