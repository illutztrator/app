require 'spec_helper'

describe "questiongroupquestions/edit" do
  before(:each) do
    @questiongroupquestion = assign(:questiongroupquestion, stub_model(Questiongroupquestion,
      :questiongroup_id => 1,
      :question_id => 1,
      :position => 1
    ))
  end

  it "renders the edit questiongroupquestion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questiongroupquestion_path(@questiongroupquestion), "post" do
      assert_select "input#questiongroupquestion_questiongroup_id[name=?]", "questiongroupquestion[questiongroup_id]"
      assert_select "input#questiongroupquestion_question_id[name=?]", "questiongroupquestion[question_id]"
      assert_select "input#questiongroupquestion_position[name=?]", "questiongroupquestion[position]"
    end
  end
end
