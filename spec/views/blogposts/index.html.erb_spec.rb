require 'spec_helper'

describe "blogposts/index" do
  before(:each) do
    assign(:blogposts, [
      stub_model(Blogpost,
        :title => "Title",
        :body => "MyText",
        :summary => "MyText",
        :published => false
      ),
      stub_model(Blogpost,
        :title => "Title",
        :body => "MyText",
        :summary => "MyText",
        :published => false
      )
    ])
  end

  it "renders a list of blogposts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
