require 'spec_helper'

describe "setcompilations/new" do
  before(:each) do
    assign(:setcompilation, stub_model(Setcompilation,
      :name => "MyString",
      :theme => "MyString"
    ).as_new_record)
  end

  it "renders new setcompilation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setcompilations_path, "post" do
      assert_select "input#setcompilation_name[name=?]", "setcompilation[name]"
      assert_select "input#setcompilation_theme[name=?]", "setcompilation[theme]"
    end
  end
end
