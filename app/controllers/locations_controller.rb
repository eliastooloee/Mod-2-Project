class LocationsController < ApplicationController
    def new
        @location = Location.new
    end

    def create
        @location = @rock.locations.create(location_params)
    end

    private

    def location_params
        params.require(:location).permit(:latitude, :longitude, :rock_types)
    end
end