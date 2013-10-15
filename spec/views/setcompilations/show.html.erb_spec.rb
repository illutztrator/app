require 'spec_helper'

describe "setcompilations/show" do
  before(:each) do
    @setcompilation = assign(:setcompilation, stub_model(Setcompilation,
      :name => "Name",
      :theme => "Theme"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Theme/)
  end
end
