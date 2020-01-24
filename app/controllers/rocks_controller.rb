class RocksController < ApplicationController

    before_action :find_rock, only: [:show, :edit, :update, :destroy]    
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
        @rock = current_user.rocks.create(rock_params)
       

        if @rock.save
            redirect_to @rock
        else
            render :new
        end
    end

    def update
       if @rock.update(rock_params)
        redirect_to @rock
       else
        render :edit
       end
    end

    def destroy
        @rock = Rock.find(params[:id])
        @rock.destroy
       
        redirect_to rocks_path
    end

    private
    def rock_params
        params.require(:rock).permit(:nick_name, :category, :minerals, :outcrop, user_ids: [])
    end

    def find_rock
        @rock = Rock.find(params[:id])
    end
end