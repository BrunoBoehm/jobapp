require 'spec_helper'

describe "uploads/show" do
  before(:each) do
    @upload = assign(:upload, stub_model(Upload,
      :title => "Title",
      :caption => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
