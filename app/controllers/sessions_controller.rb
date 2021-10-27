class SessionsController < ApplicationController



    def create
        # byebug 
        user_login = User.find_by_name(params[:name])
        if user_login
            session[:user_id] = user_login.id
            render json: user_login
        else
            render json: {error: 'Could not authenticate Try again.'}
        end
    end

    def destroy
        session.delete(:user_id)
        # head: no_content
        render json: {message: "logged out"}
    end



    private 


end