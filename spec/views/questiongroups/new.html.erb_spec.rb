require 'spec_helper'

describe "questiongroups/new" do
  before(:each) do
    assign(:questiongroup, stub_model(Questiongroup,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new questiongroup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questiongroups_path, "post" do
      assert_select "input#questiongroup_name[name=?]", "questiongroup[name]"
    end
  end
end
