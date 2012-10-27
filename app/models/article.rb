class Article < ActiveRecord::Base
  attr_accessible :body, :excerpt, :title

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  default_scope order: 'updated_at DESC'

  def summary
    if excerpt.present?
      excerpt
    else
      body.split('<!--more-->')[0]
    end
  end
end
