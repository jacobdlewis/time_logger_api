class Api::ActivitiesController < ApplicationController

  def index
    activities = Activity.all
    render json: activities
  end

  def create
    activity = Activity.new(activity_params)
    if activity.save
      render json: activity, status: :created
    else
      render json: activity.errors, status: :unprocessable_entity
    end
  end

  def update
    activity = Activity.find(params[:id])
    if activity.update(activity_params)
      render json: activity, status: :ok
    else
      render json: activity.errors, status: :unprocessable_entity
    end
  end

  def activity_params
    params.require(:activity).permit(:name, :active)
  end

end
