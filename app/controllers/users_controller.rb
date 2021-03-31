class UsersController < ApplicationController

    def index
        user = User.all 
        render json: user
    end

    def show
        current_user = User.find(params[:id])

        render json: current_user, :except => [:updated_at], :include => [location: {only: [:name, :zip]}, activities: {only: [:name]}]
    end
    
    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: user
        end
    end

    # @client = Client.create(client_params)
    #     puts @client
    #     Marketplace.first.clients << @client
    #     if @client.valid? && @client.errors.empty?
    #         render json: {type: "success", message: "Account successfully created"}
    #     else
    #         errors = {type: "failure", message: []}
    #         @client.errors.each do |error|
    #             errors[:message] << {"#{error.attribute}".to_sym => error.full_message}
    #         end
    #         render json: errors
    #     end


    private
        def user_params
            params.require(:user).permit(:username, :password, :email)
        end

end
