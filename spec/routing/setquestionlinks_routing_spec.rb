require "spec_helper"

describe SetquestionlinksController do
  describe "routing" do

    it "routes to #index" do
      get("/setquestionlinks").should route_to("setquestionlinks#index")
    end

    it "routes to #new" do
      get("/setquestionlinks/new").should route_to("setquestionlinks#new")
    end

    it "routes to #show" do
      get("/setquestionlinks/1").should route_to("setquestionlinks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/setquestionlinks/1/edit").should route_to("setquestionlinks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/setquestionlinks").should route_to("setquestionlinks#create")
    end

    it "routes to #update" do
      put("/setquestionlinks/1").should route_to("setquestionlinks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/setquestionlinks/1").should route_to("setquestionlinks#destroy", :id => "1")
    end

  end
end
