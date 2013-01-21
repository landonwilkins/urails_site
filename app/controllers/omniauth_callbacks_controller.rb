class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    auth = Authentication.auth_from_omniauth request.env['omniauth.auth']
    # raise request.env['omniauth.auth']
    if auth.user.persisted?
      flash.notice = "Signed in!"
      sign_in_and_redirect auth.user
    else
      session['devise.user_attributes'] = auth.user.attributes
      redirect_to new_user_registration_url
    end
  end
  alias_method :github, :all
end
