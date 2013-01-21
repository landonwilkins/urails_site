class Authentication < ActiveRecord::Base
  attr_accessible :provider, :uid

  belongs_to :user
  validates_associated :user

  validates :user, presence: true

  # Takes an omniauth.auth string, and creates both an authentication and a user based on that data
  def self.auth_from_omniauth(auth)
    # Get the first match authentication, or create one
    where(auth.slice(:provider, :uid)).first_or_create do |authentication|
      authentication.provider = auth.provider
      authentication.uid = auth.uid
      # Get the first user that has this email, or create a new user
      authentication.user = User.where(email: auth.info.email).first_or_create do |u|
        u.email = auth.info.email
        u.nickname = auth.info.nickname
        u.realname = auth.info.name
        # Yes the capitalization is strange, but its right
        u.github_url = auth.info.urls.GitHub
        u.homepage = auth.info.urls.Blog
        u.oauthed = true
      end
    end
  end
end
