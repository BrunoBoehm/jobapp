require 'spec_helper'

describe "headers/edit" do
  before(:each) do
    @header = assign(:header, stub_model(Header,
      :title => "MyString",
      :caption => "MyText",
      :company_id => 1
    ))
  end

  it "renders the edit header form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", header_path(@header), "post" do
      assert_select "input#header_title[name=?]", "header[title]"
      assert_select "textarea#header_caption[name=?]", "header[caption]"
      assert_select "input#header_company_id[name=?]", "header[company_id]"
    end
  end
end
