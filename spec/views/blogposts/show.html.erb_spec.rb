require 'spec_helper'

describe "blogposts/show" do
  before(:each) do
    @blogpost = assign(:blogpost, stub_model(Blogpost,
      :title => "Title",
      :body => "MyText",
      :summary => "MyText",
      :published => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
