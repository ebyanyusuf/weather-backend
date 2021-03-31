class WeathersController < ApplicationController


    def index
        weather = Weather.all 
        render json: weather, :except => [:created_at, :updated_at]
    end
end
