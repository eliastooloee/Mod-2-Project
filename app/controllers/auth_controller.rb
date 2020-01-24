class AuthController < ApplicationController
    helper_method :logout
    def login
    end

    def authenticate
        @user =  User.find_by(username: params[:auth][:username])
        if @user 
            session[:user_id] = @user.id
            redirect_to rocks_path
        else 
            render :login
        end
    end

    def logout
        session.clear
        cookies.clear
        redirect_to login_path
    end
end