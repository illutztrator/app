require 'spec_helper'

describe "questionsets/edit" do
  before(:each) do
    @questionset = assign(:questionset, stub_model(Questionset,
      :title => "MyString"
    ))
  end

  it "renders the edit questionset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questionset_path(@questionset), "post" do
      assert_select "input#questionset_title[name=?]", "questionset[title]"
    end
  end
end
