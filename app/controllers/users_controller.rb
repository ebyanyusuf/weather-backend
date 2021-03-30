class UsersController < ApplicationController

    def index
        user = User.all 
        render json: user
    end

    def show
        current_user = User.find_or_create_by(username: params[:username])
       
       

        render json: current_user, :except => [:updated_at], :include => [location: {only: [:name, :zip]}, activities: {only: [:name]}]
    end

    

end
