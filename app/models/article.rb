class Article < ActiveRecord::Base
  attr_accessible :body, :excerpt, :title

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
end
