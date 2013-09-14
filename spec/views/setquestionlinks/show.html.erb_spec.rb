require 'spec_helper'

describe "setquestionlinks/show" do
  before(:each) do
    @setquestionlink = assign(:setquestionlink, stub_model(Setquestionlink,
      :set_id => 1,
      :question_id => 2,
      :follower_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
