module Api
  module V1
    class DoListsController < Api::V1::ApplicationController

      def index
        @do_lists = DoList.all.order(id: "DESC")
        render json: @do_lists
      end

      def create
        @do_list = DoList.create(do_lists_params )
        render json: @do_lists
      end

      def destroy
        @do_list = DoList.find(params[:id])
        @do_list.destroy
        if(true)
          render json: {}, status: :ok
        else
          render json: {}, status: :unauthorized
        end
      end

      def update
        @do_list = DoList.find(params[:id])
        @do_list.update(do_lists_params)
        render json: @do_lists
      end

      private
      def do_lists_params
        params.permit(:title)
      end
    end
  end
end