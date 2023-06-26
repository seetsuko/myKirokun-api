module Api
  module V1
    class DoListsController < Api::V1::ApplicationController

      def index
        @user = User.find(params[:user_id])
        @do_lists = @user.do_lists.all.order(id:"DESC")
        render json: @do_lists
      end

      def create
        @user = User.find(params[:user_id])
        @user.do_lists.create(do_lists_params)
        head :created
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
        if(true)
          render json: {}, status: :ok
        else
          render json: {}, status: :unauthorized
        end
      end

      private
      def do_lists_params
        params.permit(:title)
      end
    end
  end
end