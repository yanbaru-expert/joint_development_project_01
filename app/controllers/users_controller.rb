class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        User.create(user_params)
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        User.find(params[:id]).update(user_params)
    end

    def destroy
        User.find(params[:id]).destroy
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :age)
    end
end
