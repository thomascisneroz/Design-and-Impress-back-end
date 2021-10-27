class HwsaasController < ApplicationController
    def index
        render json: Hwsaa.all 
    end
end
