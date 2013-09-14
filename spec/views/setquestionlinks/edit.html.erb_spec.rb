require 'spec_helper'

describe "setquestionlinks/edit" do
  before(:each) do
    @setquestionlink = assign(:setquestionlink, stub_model(Setquestionlink,
      :set_id => 1,
      :question_id => 1,
      :follower_id => 1
    ))
  end

  it "renders the edit setquestionlink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setquestionlink_path(@setquestionlink), "post" do
      assert_select "input#setquestionlink_set_id[name=?]", "setquestionlink[set_id]"
      assert_select "input#setquestionlink_question_id[name=?]", "setquestionlink[question_id]"
      assert_select "input#setquestionlink_follower_id[name=?]", "setquestionlink[follower_id]"
    end
  end
end
