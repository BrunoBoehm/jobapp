require 'spec_helper'

describe "headers/index" do
  before(:each) do
    assign(:headers, [
      stub_model(Header,
        :title => "Title",
        :caption => "MyText",
        :company_id => 1
      ),
      stub_model(Header,
        :title => "Title",
        :caption => "MyText",
        :company_id => 1
      )
    ])
  end

  it "renders a list of headers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
