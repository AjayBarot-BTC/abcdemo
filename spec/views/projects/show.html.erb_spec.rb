require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name",
      :code => "MyText",
      :description => "MyText",
      :billing => "Billing",
      :start_date => "Start Date",
      :deadline => "Deadline",
      :end_date => "End Date",
      :github_url => "Github Url",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Billing/)
    rendered.should match(/Start Date/)
    rendered.should match(/Deadline/)
    rendered.should match(/End Date/)
    rendered.should match(/Github Url/)
    rendered.should match(/Status/)
  end
end
