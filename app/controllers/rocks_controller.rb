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

        if @rock.save
            redirect_to @rock
        else
            render :new
        end
    end

    private
    def rock_params
        params.require(:rock).permit(:nick_name, :category, :minerals, :outcrop)
    end
end