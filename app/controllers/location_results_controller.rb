class LocationResultsController < ApplicationController
    def index
        @locationResults = LocationResult.all
        render json: @locationResults, include: [:location, :result]
    end
end
