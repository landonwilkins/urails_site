require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the BlogpostsHelper. For example:
#
# describe BlogpostsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe BlogpostsHelper do
  describe '#pretty_time' do
    it 'generates a nice timestamp tag' do
      time = Time.parse("Aug 1, 2001")
      pretty_time(time).should == '<time class="icon-time" datetime="2001-08-01T00:00:00-06:00" title="Wednesday, August 1, 2001 - 12:00 AM MDT">about 11 years ago</time>'
    end
  end
end
