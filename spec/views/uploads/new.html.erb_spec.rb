require 'spec_helper'

describe "uploads/new" do
  before(:each) do
    assign(:upload, stub_model(Upload,
      :title => "MyString",
      :caption => "MyText"
    ).as_new_record)
  end

  it "renders new upload form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", uploads_path, "post" do
      assert_select "input#upload_title[name=?]", "upload[title]"
      assert_select "textarea#upload_caption[name=?]", "upload[caption]"
    end
  end
end
