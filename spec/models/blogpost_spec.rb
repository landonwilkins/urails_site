require 'spec_helper'

describe Blogpost do
  describe '#summary' do
    context 'when we have a defined excerpt' do
      before { @post = build :blogpost, excerpt: 'hello world' }
      it 'should use it' do
        @post.summary.should == 'hello world'
      end
      it 'should not use the body' do
        @post.summary.should_not == @post.body
      end
      it 'should not use the inline summary' do
        @post.summary.should_not == "This is a post (summary)\n"
      end
    end

    context 'when we have an inline excerpt' do
      before { @post = build :blogpost}
      it 'should use it' do
        @post.summary.should == "This is a post (summary)\n"
      end
      it 'should not use the whole body' do
        @post.summary.should_not == @post.body
      end
    end
  end
end
