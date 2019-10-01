class AuthController < ApplicationController

  def login
  end

  def verify
    @user = User.find_by(display_name: params[:display_name])
    session[:user_id] = @user.id
    if @user && @user.email_address == params[:email_address]
      redirect_to @user
    else
      flash[:message] = "Invalid login credentials, please try again or create a new account!"
      render :login
    end
  end

  def logout
    session.clear
    redirect_to login_path
  end

  def current_user
    if logged_in?
      User.find(session[:user_id])
    end
  end

end
