class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_out_path_for(users)
    profiles_path
  end
end
