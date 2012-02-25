require 'spec_helper'

describe "reports/edit.html.erb" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :lat => "MyString",
      :lon => "MyString",
      :comment => "MyString"
    ))
  end

  it "renders the edit report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reports_path(@report), :method => "post" do
      assert_select "input#report_lat", :name => "report[lat]"
      assert_select "input#report_lon", :name => "report[lon]"
      assert_select "input#report_comment", :name => "report[comment]"
    end
  end
end
