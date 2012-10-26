class Blogpost < ActiveRecord::Base
  attr_accessible :body, :date, :published, :excerpt, :title
  validates_presence_of :body, :title

  default_scope order: 'date DESC'

  scope :published, where(published: true)
  scope :unpublished, where(published: false)

  before_save :default_timestamp

  def default_timestamp
    self.date ||= Time.now
  end

  def summary
    if excerpt.present?
      excerpt
    else
      body.split('<!--more-->')[0]
    end
  end

  def to_param
    "#{id}-#{title}".parameterize
  end

  def newer
    Blogpost.unscoped.where('date > ? AND published = ?', self.date, true).order('date ASC').limit(1)[0]
  end

  def older
    Blogpost.unscoped.where('date < ? AND published = ?', self.date, true).order('date DESC').limit(1)[0]
  end
end
