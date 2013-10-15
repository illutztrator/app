require 'spec_helper'

describe "questiongroupquestions/show" do
  before(:each) do
    @questiongroupquestion = assign(:questiongroupquestion, stub_model(Questiongroupquestion,
      :questiongroup_id => 1,
      :question_id => 2,
      :position => 3
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
