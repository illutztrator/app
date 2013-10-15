require 'spec_helper'

describe "answer_switches/show" do
  before(:each) do
    @answer_switch = assign(:answer_switch, stub_model(AnswerSwitch,
      :question_id => 1,
      :answer => "Answer",
      :nextQuestion => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Answer/)
    rendered.should match(/2/)
  end
end
