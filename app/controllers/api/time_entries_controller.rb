class Api::TimeEntriesController < ApplicationController

  def index
    time_entries = TimeEntry.all
    render json: time_entries
  end

  def create
    time_entry = TimeEntry.new(time_entry_params)
    if time_entry.save
      render json: time_entry, status: :created
    else
      render json: time_entry.errors, status: :unprocessable_entity
    end
  end

  def update
    time_entry = TimeEntry.find(params[:id])
    if time_entry.update(time_entry_params)
      render json: time_entry, status: :ok
    else
      render json: time_entry.errors, status: :unprocessable_entity
    end
  end

  def time_entry_params
    params.require(:time_entry).permit(:area, :business_mileage, :comment, :date, :hours, :personal_mileage, :project_id, :activity_id)
  end

end
