class HomeController < ApplicationController
  def index
  	@name = "Sample Name"
  	@place = "Sample Place"
  end

  def show
    @show_name ="Show Sample Name"
    @show_place = "Show Sample Place"
  end
end

