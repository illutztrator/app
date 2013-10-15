require "spec_helper"

describe AnswerSwitchesController do
  describe "routing" do

    it "routes to #index" do
      get("/answer_switches").should route_to("answer_switches#index")
    end

    it "routes to #new" do
      get("/answer_switches/new").should route_to("answer_switches#new")
    end

    it "routes to #show" do
      get("/answer_switches/1").should route_to("answer_switches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/answer_switches/1/edit").should route_to("answer_switches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/answer_switches").should route_to("answer_switches#create")
    end

    it "routes to #update" do
      put("/answer_switches/1").should route_to("answer_switches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/answer_switches/1").should route_to("answer_switches#destroy", :id => "1")
    end

  end
end
