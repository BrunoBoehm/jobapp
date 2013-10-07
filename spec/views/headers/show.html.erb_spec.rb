require 'spec_helper'

describe "headers/show" do
  before(:each) do
    @header = assign(:header, stub_model(Header,
      :title => "Title",
      :caption => "MyText",
      :company_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
