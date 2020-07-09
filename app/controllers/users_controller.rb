class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

      def create
        user = User.create(user_params)
        redirect_to purchases_path
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user = User.create(name: params[:name], password: params[:password])
    end

    def show
        @user = User.find(params[:id])
    end
    

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end