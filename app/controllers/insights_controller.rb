class InsightsController < ApplicationController
  before_action :auth_user

  def create
    if insight.save
      render json: {
        insight: insight,
        username: current_user.username
      }, status: 201
    else
      render json: {
        error: insight.errors.full_messages.first
      }, status: 400
    end
  end

  def insight
    @insight ||= current_user.insights.new(insight_params)
  end

  def insight_params
    params.require(:insight).permit(:body, :destination_id)
  end
end
