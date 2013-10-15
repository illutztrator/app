require 'spec_helper'

describe "texts/new" do
  before(:each) do
    assign(:text, stub_model(Text,
      :title => "MyString",
      :text => "MyText"
    ).as_new_record)
  end

  it "renders new text form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", texts_path, "post" do
      assert_select "input#text_title[name=?]", "text[title]"
      assert_select "textarea#text_text[name=?]", "text[text]"
    end
  end
end
