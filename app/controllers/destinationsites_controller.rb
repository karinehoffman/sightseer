class DestinationsitesController < ApplicationController
  def index
    @destinationsites = Destinationsite.all
  end

  def show
    @destinationsite = Destinationsite.find(params[:id])
  end

  def new
    @destinationsite = Destinationsite.new
  end

  def create
    @destinationsite = Destinationsite.new
    @destinationsite.trip_id = params[:trip_id]
    @destinationsite.country_id = params[:country_id]
    @destinationsite.city_id = params[:city_id]
    @destinationsite.site_id = params[:site_id]

    if @destinationsite.save
      redirect_to "/destinationsites", :notice => "Destinationsite created successfully."
    else
      render 'new'
    end
  end

  def edit
    @destinationsite = Destinationsite.find(params[:id])
  end

  def update
    @destinationsite = Destinationsite.find(params[:id])

    @destinationsite.trip_id = params[:trip_id]
    @destinationsite.country_id = params[:country_id]
    @destinationsite.city_id = params[:city_id]
    @destinationsite.site_id = params[:site_id]

    if @destinationsite.save
      redirect_to "/destinationsites", :notice => "Destinationsite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @destinationsite = Destinationsite.find(params[:id])

    @destinationsite.destroy

    redirect_to "/destinationsites", :notice => "Destinationsite deleted."
  end
end
