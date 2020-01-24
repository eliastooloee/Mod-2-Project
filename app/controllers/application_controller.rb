class ApplicationController < ActionController::Base
    helper_method :logged_in?, :require_login, :current_user
    
    def current_user
        User.find_by(id: session[:user_id])
    end

    def require_login
        if !logged_in?
            redirect_to login_path
        end
    end

    def logged_in?
        !!session[:user_id]
    end

    def new_user_rock
        @user_rock = UserRock.new
    end

    def create_user_rock
        @user_rock = UserRock.new(user_rock_params)
    end
    
    def delete_user_rock
        @user_rock.destroy
        redirect_to user_path(current_user)
    end

    private

    def user_rock_params
        params.require(:user_rock).permit(:user_id, rock_id)
    end

end
