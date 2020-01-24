class UserRocksController < ApplicationController
    
    def new
        @user_rock = UserRock.new
    end

    def create
        @user_rock = UserRock.new(user_rock_params)
    end
    
    def delete
        @user_rock.destroy
        redirect_to user_path(current_user)
    end

    private

    def user_rock_params
        params.require(:user_rock).permit(:user_id, rock_id)
    end
end