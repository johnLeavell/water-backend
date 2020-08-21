class LocationResultsController < ApplicationController
    def index
        locationResult = LocationsResult.all
        render json: locationResult, include: [:location, :result]
    end
end
