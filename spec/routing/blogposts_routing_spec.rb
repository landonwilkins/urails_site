require "spec_helper"

describe BlogpostsController do
  describe "routing" do

    it "routes to #index" do
      get("/blogposts").should route_to("blogposts#index")
    end

    it "routes to #show" do
      get("/blogposts/1").should route_to("blogposts#show", :id => "1")
    end
  end
end
