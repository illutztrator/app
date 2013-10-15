require "spec_helper"

describe SetCompilationLinksController do
  describe "routing" do

    it "routes to #index" do
      get("/set_compilation_links").should route_to("set_compilation_links#index")
    end

    it "routes to #new" do
      get("/set_compilation_links/new").should route_to("set_compilation_links#new")
    end

    it "routes to #show" do
      get("/set_compilation_links/1").should route_to("set_compilation_links#show", :id => "1")
    end

    it "routes to #edit" do
      get("/set_compilation_links/1/edit").should route_to("set_compilation_links#edit", :id => "1")
    end

    it "routes to #create" do
      post("/set_compilation_links").should route_to("set_compilation_links#create")
    end

    it "routes to #update" do
      put("/set_compilation_links/1").should route_to("set_compilation_links#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/set_compilation_links/1").should route_to("set_compilation_links#destroy", :id => "1")
    end

  end
end
