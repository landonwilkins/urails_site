require 'spec_helper'

describe ApplicationHelper do

  describe '#format' do
    it "should smartify text" do
      format("You're don't we're \"Hello world\"").should == "<p>You&#39;re don&#39;t we&#39;re &ldquo;Hello world&rdquo;</p>\n"
    end
    context "when given some markdown" do
      it "should process bold properly" do
        format("This **should be bold**").should == "<p>This <strong>should be bold</strong></p>\n"
      end
      it "should process italics properly" do
        format("This **should be italic**").should == "<p>This <strong>should be italic</strong></p>\n"
      end
      it "should handle links" do
        format("This [should be a link](http://google.com)").should == "<p>This <a href=\"http://google.com\">should be a link</a></p>\n"
      end
    end
  end

  describe '#smarten' do
    it "should smartify text" do
      format("You're don't we're \"Hello world\"").should == "<p>You&#39;re don&#39;t we&#39;re &ldquo;Hello world&rdquo;</p>\n"
    end
  end
end
