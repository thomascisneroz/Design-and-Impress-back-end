class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews
    end 

    def show
        review = Review.find(params[:id])
        if review
            render json: review
        else 
            render json: {error: 'review not found'}, status: :not_found
        end
    end

    def create
        new_review = Review.create(review_params)
        if new_review
            render json: new_review
        else 
            render json: {error: 'review not found'}, status: :not_found
        end
    end

    private

    def review_params
        params.permit(:title, :user_id, :comment )
    end
end
