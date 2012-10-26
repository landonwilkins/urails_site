class Blogpost < ActiveRecord::Base
  attr_accessible :body, :date, :published, :summary, :title
end
