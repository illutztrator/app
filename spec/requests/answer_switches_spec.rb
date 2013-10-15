require 'spec_helper'

describe "AnswerSwitches" do
  describe "GET /answer_switches" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get answer_switches_path
      response.status.should be(200)
    end
  end
end
