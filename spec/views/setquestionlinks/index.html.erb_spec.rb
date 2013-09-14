require 'spec_helper'

describe "setquestionlinks/index" do
  before(:each) do
    assign(:setquestionlinks, [
      stub_model(Setquestionlink,
        :set_id => 1,
        :question_id => 2,
        :follower_id => 3
      ),
      stub_model(Setquestionlink,
        :set_id => 1,
        :question_id => 2,
        :follower_id => 3
      )
    ])
  end

  it "renders a list of setquestionlinks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
