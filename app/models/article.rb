class Article < ActiveRecord::Base
  attr_accessible :body, :excerpt, :title

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
end
