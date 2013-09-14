require 'spec_helper'

describe "questionsets/new" do
  before(:each) do
    assign(:questionset, stub_model(Questionset,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new questionset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questionsets_path, "post" do
      assert_select "input#questionset_title[name=?]", "questionset[title]"
    end
  end
end
