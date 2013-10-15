require 'spec_helper'

describe "setcompilations/edit" do
  before(:each) do
    @setcompilation = assign(:setcompilation, stub_model(Setcompilation,
      :name => "MyString",
      :theme => "MyString"
    ))
  end

  it "renders the edit setcompilation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", setcompilation_path(@setcompilation), "post" do
      assert_select "input#setcompilation_name[name=?]", "setcompilation[name]"
      assert_select "input#setcompilation_theme[name=?]", "setcompilation[theme]"
    end
  end
end
