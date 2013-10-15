require "spec_helper"

describe SetcompilationsController do
  describe "routing" do

    it "routes to #index" do
      get("/setcompilations").should route_to("setcompilations#index")
    end

    it "routes to #new" do
      get("/setcompilations/new").should route_to("setcompilations#new")
    end

    it "routes to #show" do
      get("/setcompilations/1").should route_to("setcompilations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/setcompilations/1/edit").should route_to("setcompilations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/setcompilations").should route_to("setcompilations#create")
    end

    it "routes to #update" do
      put("/setcompilations/1").should route_to("setcompilations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/setcompilations/1").should route_to("setcompilations#destroy", :id => "1")
    end

  end
end
