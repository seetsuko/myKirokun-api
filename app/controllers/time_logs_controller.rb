class TimeLogsController < ApplicationController

  def index
    time_logs = TimeLog.all
    render json: time_logs
  end

  def create
    TimeLog.create(time_logs_params)
    head :created
  end

  def destroy
    TimeLog.find(params[:id]).destroy
    head :deleted
  end

  def update
    TimeLog.find(params[:id]).update(task_params)
    head :updated
  end

  private
  def time_logs_params
    params.permit(:time)
  end
end
