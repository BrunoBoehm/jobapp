require 'spec_helper'

describe "headers/new" do
  before(:each) do
    assign(:header, stub_model(Header,
      :title => "MyString",
      :caption => "MyText",
      :company_id => 1
    ).as_new_record)
  end

  it "renders new header form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", headers_path, "post" do
      assert_select "input#header_title[name=?]", "header[title]"
      assert_select "textarea#header_caption[name=?]", "header[caption]"
      assert_select "input#header_company_id[name=?]", "header[company_id]"
    end
  end
end
