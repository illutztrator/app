require 'spec_helper'

describe "set_compilation_links/index" do
  before(:each) do
    assign(:set_compilation_links, [
      stub_model(SetCompilationLink,
        :set_id => 1,
        :setcompilation_id => 2
      ),
      stub_model(SetCompilationLink,
        :set_id => 1,
        :setcompilation_id => 2
      )
    ])
  end

  it "renders a list of set_compilation_links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
