class ChairsController < ApplicationController

def index
 @chairs = Chair.all
end

def new
 @chair = Chair.new
end

def create
 @chair = Chair.create(chair_params)
 redirect_to chairs_path

end

def show
 @chair = Chair.find(params[:id])
end

def edit
 @chair = Chair.find(params[:id])
	
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

def chair_params
	params.require(:chair).permit(:name,:company)
end

end
