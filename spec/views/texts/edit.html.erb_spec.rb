require 'spec_helper'

describe "texts/edit" do
  before(:each) do
    @text = assign(:text, stub_model(Text,
      :title => "MyString",
      :text => "MyText"
    ))
  end

  it "renders the edit text form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", text_path(@text), "post" do
      assert_select "input#text_title[name=?]", "text[title]"
      assert_select "textarea#text_text[name=?]", "text[text]"
    end
  end
end
