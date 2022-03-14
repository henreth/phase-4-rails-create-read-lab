class PlantsController < ApplicationController
        # GET /birds
        def index
            plants = Plant.all
            render json: plants
        end    

          # GET /birds/:id
        def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
        # if bird
        #   render json: plant
        # else
        #   render json: { error: "Plant not found" }, status: :not_found
        # end
        end

        # POST /birds
        def create
            plant = Plant.create(plant_params)
            render json: plant, status: :created
        end
        
        private
        # all methods below here are private
    
        def plant_params
            params.permit(:name, :image, :price)
        end

end
