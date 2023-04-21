class SpicesController < ApplicationController

    # GET /spices
    def index
        spices = Spice.all
        render json: spices
    end

    # GET /spices/:id
    # def show
    #     spice = find_spice
    #     render json: spice
    # end

    # POST /spices
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end
    
    # PATCH /spices/:id
    def update
        spice = find_spice
        spice.update(spice_params)
        render json: spice
    end

    # DELETE spices/:id
    def destroy
        spice = find_spice
        spice.destroy
        head :no_content
    end

    private

    def find_spice
        Spice.find(params[:id])
    end

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
end
