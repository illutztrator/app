require 'spec_helper'

describe "questionsets/index" do
  before(:each) do
    assign(:questionsets, [
      stub_model(Questionset,
        :title => "Title"
      ),
      stub_model(Questionset,
        :title => "Title"
      )
    ])
  end

  it "renders a list of questionsets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
