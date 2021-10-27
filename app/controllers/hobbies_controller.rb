class HobbiesController < ApplicationController
    def index
        hobbies = Hobby.all
        render json: hobbies
    end

    def show
        hobby = Hobby.find_by(id: params[:id])
        if hobby
            render json: hobby
        else 
            render json: {error: 'hobby not found'}, status: :not_found
        end
    end
end
