class SessionsController < ApplicationController

  helper_method :user
  attr_reader :user

  def new
    unless current_user
      @user = User.new
    else
      redirect_to dashboards_path
    end
  end

  def create
    @user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome Back!"
      redirect_to dashboards_path
    else
      flash[:notice] = "Please try again."
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
