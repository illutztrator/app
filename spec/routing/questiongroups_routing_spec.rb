require "spec_helper"

describe QuestiongroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/questiongroups").should route_to("questiongroups#index")
    end

    it "routes to #new" do
      get("/questiongroups/new").should route_to("questiongroups#new")
    end

    it "routes to #show" do
      get("/questiongroups/1").should route_to("questiongroups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/questiongroups/1/edit").should route_to("questiongroups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/questiongroups").should route_to("questiongroups#create")
    end

    it "routes to #update" do
      put("/questiongroups/1").should route_to("questiongroups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/questiongroups/1").should route_to("questiongroups#destroy", :id => "1")
    end

  end
end
