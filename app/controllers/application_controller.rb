class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   protect_from_forgery with: :exception
   include SessionsHelper

   # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  helper_method :current_user
#   before_action :authenticate_user

#   def authenticate_user
#     unless user_logged_in?
#       redirect_to new_login_path
#     end
#   end

#   def current_user
#     if user_logged_in?
#       User.find(session[:logged_in_users_id])
#     end
#   end

#   def user_logged_in?
#     session[:logged_in_users_id].present?
#   end
#   helper_method :user_logged_in?
end
