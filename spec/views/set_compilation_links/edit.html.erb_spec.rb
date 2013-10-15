require 'spec_helper'

describe "set_compilation_links/edit" do
  before(:each) do
    @set_compilation_link = assign(:set_compilation_link, stub_model(SetCompilationLink,
      :set_id => 1,
      :setcompilation_id => 1
    ))
  end

  it "renders the edit set_compilation_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", set_compilation_link_path(@set_compilation_link), "post" do
      assert_select "input#set_compilation_link_set_id[name=?]", "set_compilation_link[set_id]"
      assert_select "input#set_compilation_link_setcompilation_id[name=?]", "set_compilation_link[setcompilation_id]"
    end
  end
end
