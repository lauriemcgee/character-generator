class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    if session[:user_id]
    helper_method :current_user
    end
  end

end
