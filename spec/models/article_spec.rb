require 'spec_helper'

describe Article do
    describe '#summary' do
    context 'when we have a defined excerpt' do
      before { @article = build :article, excerpt: 'hello world' }
      it 'should use it' do
        @article.summary.should == 'hello world'
      end
      it 'should not use the body' do
        @article.summary.should_not == @article.body
      end
      it 'should not use the inline summary' do
        @article.summary.should_not == "This is the article summary\n"
      end
    end

    context 'when we have an inline excerpt' do
      before { @article = build :article}
      it 'should use it' do
        @article.summary.should == "This is the article summary\n"
      end
      it 'should not use the whole body' do
        @article.summary.should_not == @article.body
      end
    end
  end
end
