class ApplicationController < ActionController::API
    include ActionController::Cookies  

    before_action :current_user

    private 

    def current_user
        @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
    end
end
