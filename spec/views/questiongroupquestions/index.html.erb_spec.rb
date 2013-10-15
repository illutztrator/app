require 'spec_helper'

describe "questiongroupquestions/index" do
  before(:each) do
    assign(:questiongroupquestions, [
      stub_model(Questiongroupquestion,
        :questiongroup_id => 1,
        :question_id => 2,
        :position => 3
      ),
      stub_model(Questiongroupquestion,
        :questiongroup_id => 1,
        :question_id => 2,
        :position => 3
      )
    ])
  end

  it "renders a list of questiongroupquestions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
