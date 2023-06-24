module Api
  module V1
    class TimeLogsController < Api::V1::ApplicationController

      def index
        @do_list = DoList.find(params[:do_list_id])
        @time_logs = @do_list.time_logs.all.order(id:"ASC")
        render json: @time_logs
      end

      def create
        @do_list = DoList.find(params[:do_list_id])
        @do_list.time_logs.create(time_logs_params)
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
      def time_logs_params
        params.permit(:time)
      end
    end
  end
end