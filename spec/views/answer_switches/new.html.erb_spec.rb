require 'spec_helper'

describe "answer_switches/new" do
  before(:each) do
    assign(:answer_switch, stub_model(AnswerSwitch,
      :question_id => 1,
      :answer => "MyString",
      :nextQuestion => 1
    ).as_new_record)
  end

  it "renders new answer_switch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_switches_path, "post" do
      assert_select "input#answer_switch_question_id[name=?]", "answer_switch[question_id]"
      assert_select "input#answer_switch_answer[name=?]", "answer_switch[answer]"
      assert_select "input#answer_switch_nextQuestion[name=?]", "answer_switch[nextQuestion]"
    end
  end
end
