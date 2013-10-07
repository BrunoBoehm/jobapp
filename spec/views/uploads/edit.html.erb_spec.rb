require 'spec_helper'

describe "uploads/edit" do
  before(:each) do
    @upload = assign(:upload, stub_model(Upload,
      :title => "MyString",
      :caption => "MyText"
    ))
  end

  it "renders the edit upload form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", upload_path(@upload), "post" do
      assert_select "input#upload_title[name=?]", "upload[title]"
      assert_select "textarea#upload_caption[name=?]", "upload[caption]"
    end
  end
end
