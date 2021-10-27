class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def show
        user = User.find_by(id: params[:id])
        if user 
            render json: user
        else 
            render json: {error: 'user not found'}, status: :not_found
        end
    end

    def create
        # byebug
        new_user = User.create(user_params)
        if new_user
            render json: new_user
        else 
            render json: {error: 'user not found'}, status: :not_found
        end
    end

    private

    def user_params
        params.permit(:name, :email, :password)
    end
end
