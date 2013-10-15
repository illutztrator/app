require 'spec_helper'

describe "set_compilation_links/show" do
  before(:each) do
    @set_compilation_link = assign(:set_compilation_link, stub_model(SetCompilationLink,
      :set_id => 1,
      :setcompilation_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
