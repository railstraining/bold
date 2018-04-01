class SitesController < ApplicationController
  # layout "sites_layout"
  def index
    @sites = Site.all
  end

  def show 

  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.create(site_params)
    redirect_to sites_path
  end

  def edit
    @site = Site.find(params[:id])
  end
  
  def update
    @site = Site.find(params[:id])
    @site.update(site_params)
    redirect_to sites_path
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    redirect_to sites_path
  end


  private
  
  def site_params
      params.require(:site).permit(:name,:party_id,:user_name,:country,:state)
  end
end





