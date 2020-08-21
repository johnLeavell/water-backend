class LocationsController < ApplicationController
    def index
        @locations = Location.all
        render json: @locations
    end
    
    def show
        @location = Location.find(params[:id])
    end
    
    def new
        @location = Location.new(location_params)
    end
      
    # def create
    #   @location = Location.new(location_params)
    #   @location.save
    # end
    
    
    private
    
    def location_params
        params.reqire(:location).permit(:name)
    end
end
