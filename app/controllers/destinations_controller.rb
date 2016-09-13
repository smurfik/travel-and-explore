class DestinationsController < ApplicationController
  helper_method :destination
  attr_reader :destination

  before_action :auth_user, only: %i{new create edit update}

  def index
  end

  def new
    @destination = current_user.destinations.new
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def create
    @destination = current_user.destinations.new(destination_params)
    if destination.save
      flash[:success] = "The destination was added"
      redirect_to root_path
    else
      flash[:notice] = "Check the error messages and try again!"
      render :new
    end
  end

  def edit
    @destination = current_user.destinations.find(params[:id])
  end

  def update
    @destination = current_user.destinations.find(params[:id])
    if destination.update(destination_params)
      flash[:success] = "The destination was updated"
      redirect_to root_path
    else
      flash[:notice] = "Check the error messages and try again!"
      render :edit
    end
  end

  def destination_params
    params.require(:destination).permit(
      :city,
      :country,
      :image_url,
      :currency,
      :language
    )
  end

end
