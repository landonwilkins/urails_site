class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :nickname, :github_url, :homepage, :realname
  # attr_accessible :title, :body

  has_many :assignments
  has_many :roles, through: :assignments
  has_many :authentications

  validates :email, :nickname, presence: true
  # Check if this user has a specific role
  def has_role? role_sym
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end

  # Creates a new user based of of exisitng session data
  # This is used for creating users that use oAuth for registration
  def self.new_with_session(params, session)
    if session['devise.user_attributes']
      # Without protection sounds scary, but we've already run everything through the validations once, and we're going to run them through again so no worries
      new(session['devise.user_attributes'], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end
  # If we're coming from an oAuth provider, the user doesn't have a password
  def password_required?
    super && !oauthed
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end
end
