require "spec_helper"

describe QuestionsetsController do
  describe "routing" do

    it "routes to #index" do
      get("/questionsets").should route_to("questionsets#index")
    end

    it "routes to #new" do
      get("/questionsets/new").should route_to("questionsets#new")
    end

    it "routes to #show" do
      get("/questionsets/1").should route_to("questionsets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/questionsets/1/edit").should route_to("questionsets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/questionsets").should route_to("questionsets#create")
    end

    it "routes to #update" do
      put("/questionsets/1").should route_to("questionsets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/questionsets/1").should route_to("questionsets#destroy", :id => "1")
    end

  end
end
