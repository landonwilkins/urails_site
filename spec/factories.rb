FactoryGirl.define do
  factory :blogpost do
    sequence(:title) {|n|"Blogpost##{n}"}
    body "This is a post (summary)\n<!--more-->\nThis is the rest of the body"

    factory :published_blogpost do
      published true
    end
  end
  factory :article do
    sequence(:title) {|n|"Article##{n}"}
    body "This is the article summary\n<!--more-->\nThis is the rest of the article"
  end
  factory :page do
    sequence(:name) {|n| "Page##{n}"}
    sequence(:permalink) {|n| "Page#{n}"}
    content "This is a page!."
  end
  factory :announcement do
    sequence(:subject) {|n| "Announcement##{n}"}
    body "This is an announcement body"
  end
end
