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
    @site.trip_id = params[:trip_id]

    if @site.save
      redirect_to "/trips/#{@site.trip_id}", :notice => "Site created successfully."
    else
      redirect_to "/trips/#{@site.trip_id}", :notice => "Site already exists."
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
    @site.trip_id = params[:trip_id]

    if @site.save
      redirect_to "/trips/#{@site.trip_id}", :notice => "Site updated successfully."
    else
      render 'edit', :notice => "Site already exists."
    end
  end

  def destroy
    @site = Site.find(params[:id])

    @site.destroy

    redirect_to "/trips/#{@site.trip_id}", :notice => "Site deleted."
  end
end
