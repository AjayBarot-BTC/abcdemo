require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :name => "MyString",
      :code => "MyText",
      :description => "MyText",
      :billing => "MyString",
      :start_date => "MyString",
      :deadline => "MyString",
      :end_date => "MyString",
      :github_url => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "textarea#project_code[name=?]", "project[code]"
      assert_select "textarea#project_description[name=?]", "project[description]"
      assert_select "input#project_billing[name=?]", "project[billing]"
      assert_select "input#project_start_date[name=?]", "project[start_date]"
      assert_select "input#project_deadline[name=?]", "project[deadline]"
      assert_select "input#project_end_date[name=?]", "project[end_date]"
      assert_select "input#project_github_url[name=?]", "project[github_url]"
      assert_select "input#project_status[name=?]", "project[status]"
    end
  end
end
