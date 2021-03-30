class WeathersController < ApplicationController


    def index
        weather = Weather.all 
        render json: weather
    end
end
