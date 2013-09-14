require 'spec_helper'

describe "setquestionlinks/new" do
  before(:each) do
    assign(:setquestionlink, stub_model(Setquestionlink,
      :set_id => 1,
      :question_id => 1,
      :follower_id => 1
    ).as_new_record)
  end

  it "renders new setquestionlink form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setquestionlinks_path, "post" do
      assert_select "input#setquestionlink_set_id[name=?]", "setquestionlink[set_id]"
      assert_select "input#setquestionlink_question_id[name=?]", "setquestionlink[question_id]"
      assert_select "input#setquestionlink_follower_id[name=?]", "setquestionlink[follower_id]"
    end
  end
end
