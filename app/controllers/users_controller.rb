class UsersController < ApplicationController
  helper_method :user
  attr_reader :user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Welcome to Travel & Explore! You're now logged in!"
      redirect_to destinations_path
    else
      flash[:notice] = "Check the error messages and try again!"
      render :new
    end
  end

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation
    )
  end
end
