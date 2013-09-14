require 'spec_helper'

describe "questionsets/show" do
  before(:each) do
    @questionset = assign(:questionset, stub_model(Questionset,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
