require "spec_helper"

describe QuestiongroupquestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/questiongroupquestions").should route_to("questiongroupquestions#index")
    end

    it "routes to #new" do
      get("/questiongroupquestions/new").should route_to("questiongroupquestions#new")
    end

    it "routes to #show" do
      get("/questiongroupquestions/1").should route_to("questiongroupquestions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/questiongroupquestions/1/edit").should route_to("questiongroupquestions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/questiongroupquestions").should route_to("questiongroupquestions#create")
    end

    it "routes to #update" do
      put("/questiongroupquestions/1").should route_to("questiongroupquestions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/questiongroupquestions/1").should route_to("questiongroupquestions#destroy", :id => "1")
    end

  end
end
