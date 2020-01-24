class RocksController < ApplicationController
    def index
       @rocks = Rock.all 
    end

    def show
        @rock = Rock.find_by(id: params[:id])
    end

    def new
        @rock = Rock.new
    end

    def create 
        @rock = Rock.new(rock_params)
        
        new_user_rock
        create_user_rock

        if @rock.save
            redirect_to @rock
        else
            render :new
        end
    end

    def update
        @rock.update(rock_params)
    end

    def delete
        @rock.destroy
        delete_user_rock
        redirect_to rocks_path
    end

    private
    def rock_params
        params.require(:rock).permit(:nick_name, :category, :minerals, :outcrop)
    end
end