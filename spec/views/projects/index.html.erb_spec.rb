require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :code => "MyText",
        :description => "MyText",
        :billing => "Billing",
        :start_date => "Start Date",
        :deadline => "Deadline",
        :end_date => "End Date",
        :github_url => "Github Url",
        :status => "Status"
      ),
      stub_model(Project,
        :name => "Name",
        :code => "MyText",
        :description => "MyText",
        :billing => "Billing",
        :start_date => "Start Date",
        :deadline => "Deadline",
        :end_date => "End Date",
        :github_url => "Github Url",
        :status => "Status"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Billing".to_s, :count => 2
    assert_select "tr>td", :text => "Start Date".to_s, :count => 2
    assert_select "tr>td", :text => "Deadline".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
    assert_select "tr>td", :text => "Github Url".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
