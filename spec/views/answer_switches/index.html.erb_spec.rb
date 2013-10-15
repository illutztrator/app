require 'spec_helper'

describe "answer_switches/index" do
  before(:each) do
    assign(:answer_switches, [
      stub_model(AnswerSwitch,
        :question_id => 1,
        :answer => "Answer",
        :nextQuestion => 2
      ),
      stub_model(AnswerSwitch,
        :question_id => 1,
        :answer => "Answer",
        :nextQuestion => 2
      )
    ])
  end

  it "renders a list of answer_switches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
