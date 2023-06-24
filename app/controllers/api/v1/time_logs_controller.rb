module Api
  module V1
    class TimeLogsController < Api::V1::ApplicationController

      def index
        @time_logs = TimeLog.all.order(id:"ASC")
        render json: @time_logs
      end

      def create
        TimeLog.create(time_logs_params)
        head :created
      end

      def destroy
        TimeLog.find(params[:id]).destroy
        if(true)
          render json: {}, status: :ok
        else
          render json: {}, status: :unauthorized
        end
      end

      def update
        TimeLog.find(params[:id]).update(time_logs_params)
        render json: @time_logs
      end

      private
      def do_logs_params
        params.permit(:time)
      end
    end
  end
end