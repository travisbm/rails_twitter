class SessionsController < ApplicationController
  # # skip_before_filter :authenticate_user

  # def new
  # end

  # def create
  #   #username and password
  #   user = User.find_by_username(params[:username])
  #   if user.present? && user.authenticate(params[:password])
  #     set_user_session(user)
  #     redirect_to root_path, notice: "Successfully logged in!"
  #   else
  #     flash[:alert] = 'Username or Password did not match.'
  #     render :new
  #   end
  # end

  # def destroy
  #   session[:logged_in_users_id] = nil
  #   redirect_to root_path, notice: "Successfully logged out."
  # end

  # # private

  # # def set_user_ssession(user)
  # #   session[:logged_in_users_id] = user.id
  # # end

end
