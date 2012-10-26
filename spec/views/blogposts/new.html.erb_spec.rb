require 'spec_helper'

describe "blogposts/new" do
  before(:each) do
    assign(:blogpost, stub_model(Blogpost,
      :title => "MyString",
      :body => "MyText",
      :summary => "MyText",
      :published => false
    ).as_new_record)
  end

  it "renders new blogpost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blogposts_path, :method => "post" do
      assert_select "input#blogpost_title", :name => "blogpost[title]"
      assert_select "textarea#blogpost_body", :name => "blogpost[body]"
      assert_select "textarea#blogpost_summary", :name => "blogpost[summary]"
      assert_select "input#blogpost_published", :name => "blogpost[published]"
    end
  end
end
