module Api
  module V1
    class DoLogsController < Api::V1::ApplicationController

      def index
        do_logs = DoLog.all
        render json: do_logs
      end

      def create
        DoLog.create(do_logs_params)
        head :created
      end

      def destroy
        DoLog.find(params[:id]).destroy
        head :deleted
      end

      def update
        DoLog.find(params[:id]).update(task_params)
        head :updated
      end

      private
      def do_logs_params
        params.permit(:time, :id, :uid)
      end
    end
  end
end