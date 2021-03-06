require 'spec_helper'

describe "problems/show" do
  before(:each) do
    @problem = assign(:problem, stub_model(Problem,
      :question_id => 1,
      :problem => "MyText",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
