class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update]
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]

    def show
        @user = User.find_by(id: params[:id])
    end

    def new
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            redirect_to login_path
        else
            render :new
        end
    end

    def update
        if @user.update(user_params)
            redirect_to @user
        else
            render :edit
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :home_location, :professional, rock_ids: [])
    end

    def find_user 
        @user = User.find(params[:id])
    end
end