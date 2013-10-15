require 'spec_helper'

describe "setcompilations/index" do
  before(:each) do
    assign(:setcompilations, [
      stub_model(Setcompilation,
        :name => "Name",
        :theme => "Theme"
      ),
      stub_model(Setcompilation,
        :name => "Name",
        :theme => "Theme"
      )
    ])
  end

  it "renders a list of setcompilations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Theme".to_s, :count => 2
  end
end
