FactoryGirl.define do
  factory :blogpost do
    sequence(:title) {|n|"Blogpost##{n}"}
    body "This is a post (summary)\n<!--more-->\nThis is the rest of the body"

    factory :published_blogpost do
      published true
    end
  end

end
