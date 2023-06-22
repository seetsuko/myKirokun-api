module Api
  module V1
    class DoListsController < Api::V1::ApplicationController

      def index
        do_lists = DoList.all
        render json: do_lists
      end

      def create
        DoList.create(do_lists_params)
        head :created
      end

      def destroy
        DoList.find(params[:id]).destroy
        head :deleted
      end

      def update
        DoList.find(params[:id]).update(task_params)
        head :updated
      end

      private
      def do_lists_params
        params.permit(:title, :id, :uid)
      end
    end
  end
end