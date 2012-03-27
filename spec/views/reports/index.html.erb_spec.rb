require 'spec_helper'

describe "reports/index.html.erb" do
  before(:each) do
    # TODO replace with Factory calls
    assign(:reports, [
      stub_model(Report,
        :lat => "Lat",
        :lon => "Lon",
        :comment => "Comment",
        :datetime => Time.now
      ),
      stub_model(Report,
        :lat => "Lat",
        :lon => "Lon",
        :comment => "Comment",
        :datetime => Time.now
      )
    ])
  end

  it "renders a list of reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lat".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lon".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
  end
end
