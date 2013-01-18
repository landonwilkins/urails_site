require 'spec_helper'

describe "announcements/new" do
  before(:each) do
    assign(:announcement, stub_model(Announcement,
      :subject => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new announcement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => announcements_path, :method => "post" do
      assert_select "input#announcement_subject", :name => "announcement[subject]"
      assert_select "textarea#announcement_body", :name => "announcement[body]"
    end
  end
end
