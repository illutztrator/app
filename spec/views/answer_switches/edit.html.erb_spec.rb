require 'spec_helper'

describe "answer_switches/edit" do
  before(:each) do
    @answer_switch = assign(:answer_switch, stub_model(AnswerSwitch,
      :question_id => 1,
      :answer => "MyString",
      :nextQuestion => 1
    ))
  end

  it "renders the edit answer_switch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_switch_path(@answer_switch), "post" do
      assert_select "input#answer_switch_question_id[name=?]", "answer_switch[question_id]"
      assert_select "input#answer_switch_answer[name=?]", "answer_switch[answer]"
      assert_select "input#answer_switch_nextQuestion[name=?]", "answer_switch[nextQuestion]"
    end
  end
end
