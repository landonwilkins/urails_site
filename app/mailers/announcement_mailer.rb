class AnnouncementMailer < ActionMailer::Base
  default :from => "announcer@urails.com"
 
  def announce(announcement)
    @announcement = announcement
    
    # Send announcement to all users subscribed to announcments
    users = User.where(announcement_sub: true)

    users.each do |u|
      mail(to: u.email, subject: @announcement.subject)
    end


  end

end
