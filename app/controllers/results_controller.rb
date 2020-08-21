class ResultsController < ApplicationController
    def index
        @results = Result.all
        render json: @results
    end
    
    def new
        @result = Result.new
    end
    
    def show
        @result = Result.find(params[:id])
    end
    
    def create
        @result = Result.new(result_params)
         if @result.valid?
            @result.save
          @id = params[:result][:locatonss].to_i
          LocationResult.create(location_id: @id, result_id: @result.id)
        redirect_to @result
        else
          render :new
        end
    end
    
      
    
    private
    
    def result_params
        params.require(:result).permit(:date, :time, :temp, :trub, :stage, :tryp_ppb, :tryp_temp_corr, :coil_coll_100ml, :cable_power, :location_id)
    end

end
