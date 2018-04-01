class VehiclesController < ApplicationController

  # GET /products
  # GET /products.json
  def index
    @vehicles = Vehicle.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  	@vehicle = Vehicle.find(params[:id])
  end

  # GET /products/new
  def new
    @vehicle = Vehicle.new
  end

  def create
  	@vehicle = Vehicle.create(vehicle_params)
  	redirect_to vehicles_path
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to vehicle_path
  end


  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_path
  end 

  private

   def vehicle_params
   	params.require(:vehicle).permit(:name,:number)
   end
  
end
