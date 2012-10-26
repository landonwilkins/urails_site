module BlogpostsHelper
  def pretty_time timestamp
    return "unknown" if timestamp.nil?
     time_tag timestamp, time_ago_in_words(timestamp) + (timestamp.future? ? ' in the future': ' ago'), title: timestamp.strftime('%A, %B %-d, %Y - %-l:%M %p %Z'), class: ['icon-time']
  end
end
