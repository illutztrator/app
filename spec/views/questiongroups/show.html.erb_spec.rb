require 'spec_helper'

describe "questiongroups/show" do
  before(:each) do
    @questiongroup = assign(:questiongroup, stub_model(Questiongroup,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
