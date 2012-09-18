class ApplicationController < ActionController::Base
  protect_from_forgery
  private

  def current_user
    #make sure that current user is checked over a secure connection or
    #if connection is not secure is checked against the secure cookie
    if !request.ssl? || cookies.signed[:secure_user_id] == "secure#{session[:user_id]}"
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end
  helper_method :current_user
end
