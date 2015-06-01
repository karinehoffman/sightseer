class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new
    @site.photo = params[:photo]
    @site.name = params[:name]
    @site.description = params[:description]
    @site.city_id = params[:city_id]
    @site.type_id = params[:type_id]

    if @site.save
      redirect_to "/sites", :notice => "Site created successfully."
    else
      render 'new'
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])

    @site.photo = params[:photo]
    @site.name = params[:name]
    @site.description = params[:description]
    @site.city_id = params[:city_id]
    @site.type_id = params[:type_id]

    if @site.save
      redirect_to "/sites", :notice => "Site updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @site = Site.find(params[:id])

    @site.destroy

    redirect_to "/sites", :notice => "Site deleted."
  end
end
