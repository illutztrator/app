require 'spec_helper'

describe "Setcompilations" do
  describe "GET /setcompilations" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get setcompilations_path
      response.status.should be(200)
    end
  end
end
