require 'spec_helper'

describe "problems/new" do
  before(:each) do
    assign(:problem, stub_model(Problem,
      :question_id => 1,
      :problem => "MyText",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new problem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", problems_path, "post" do
      assert_select "input#problem_question_id[name=?]", "problem[question_id]"
      assert_select "textarea#problem_problem[name=?]", "problem[problem]"
      assert_select "input#problem_user_id[name=?]", "problem[user_id]"
    end
  end
end
