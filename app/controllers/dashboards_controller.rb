class DashboardsController < ApplicationController
  helper_method :destinations
  attr_reader :destinations

  before_action :auth_user

  def index
    @destinations = current_user.destinations
  end
end
