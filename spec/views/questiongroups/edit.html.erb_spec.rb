require 'spec_helper'

describe "questiongroups/edit" do
  before(:each) do
    @questiongroup = assign(:questiongroup, stub_model(Questiongroup,
      :name => "MyString"
    ))
  end

  it "renders the edit questiongroup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questiongroup_path(@questiongroup), "post" do
      assert_select "input#questiongroup_name[name=?]", "questiongroup[name]"
    end
  end
end
