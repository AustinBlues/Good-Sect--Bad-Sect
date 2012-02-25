require 'spec_helper'

describe "reports/show.html.erb" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :lat => "Lat",
      :lon => "Lon",
      :comment => "Comment"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lat/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lon/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
  end
end
