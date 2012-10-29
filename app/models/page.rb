class Page < ActiveRecord::Base
  attr_accessible :content, :name, :permalink

  def to_param
    permalink
  end
end
