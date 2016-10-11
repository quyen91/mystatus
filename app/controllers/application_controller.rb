class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  def after_sign_out_path_for(users)
    new_user_session_path
  end

  def current_user?(other_user)
     current_user == other_user
  end
end
