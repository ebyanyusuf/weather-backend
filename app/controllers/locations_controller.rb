class LocationsController < ApplicationController
    def index
        locations = Location.all 
        render json: locations
    end

    def user_location
        location = Location.find_by(user_id: params["id"])
        if location
            render json: location, :except => [:created_at, :updated_at], :include => [weathers: {only: [:temperature, :description]}, activities: {only: [:name]}]
        end
    end

    def location_by_zip
        location = Location.find_by(zip: params["zip"])

        if location
            render json: location, :except => [:created_at, :updated_at], :include => [weathers: {only: [:temperature, :description]}, activities: {only: [:name]}]
        else
            render json: {message: "Location not found"}
        end
    end

end
