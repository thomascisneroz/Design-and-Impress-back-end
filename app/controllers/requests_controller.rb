class RequestsController < ApplicationController
    def index
        requests = Request.all
        render json: requests
    end
    
    def show
        request = Request.find_by(id: params[:id])
        if request 
            render json: request
        else 
            render json: {error: 'request not found'},status: :not_found
        end
    end

    def create
        new_request = Request.create(request_params)
        if new_request.save
            render json: new_request
        else
            render json: {error: new_request.errors.full_messages}
        end
    end

    def destroy
        destroy_request = Request.find_by(id: params[:id])
        if destroy_request
            destroy_request.destroy
            render json: destroy_request
        else 
            render json: {error: 'request not found'},status: :not_found
        end
    end

    private 

    def request_params
        params.permit(:name, :title, :user_id, :details)
    end

end
