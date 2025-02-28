class CampersController < ApplicationController

    def index
        render json: Camper.all, status: :ok
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, serializer: CamperWithActivitiesSerializer, status: :ok
    end 

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private 

    def camper_params
        params.permit(:name, :age)
    end
end
