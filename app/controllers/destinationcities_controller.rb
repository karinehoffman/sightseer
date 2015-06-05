class DestinationcitiesController < ApplicationController
  def index
    @destinationcities = Destinationcity.all
  end

  def show
    @destinationcity = Destinationcity.find(params[:id])
  end

  def new
    @destinationcity = Destinationcity.new
  end

  def create
    @destinationcity = Destinationcity.new
    @destinationcity.trip_id = params[:trip_id]
    @destinationcity.country_id = params[:country_id]
    @destinationcity.city_id = params[:city_id]

    if @destinationcity.save
      redirect_to "/destinationcities", :notice => "Destinationcity created successfully."
    else
      render 'new'
    end
  end

  def edit
    @destinationcity = Destinationcity.find(params[:id])
  end

  def update
    @destinationcity = Destinationcity.find(params[:id])

    @destinationcity.trip_id = params[:trip_id]
    @destinationcity.country_id = params[:country_id]
    @destinationcity.city_id = params[:city_id]

    if @destinationcity.save
      redirect_to "/destinationcities", :notice => "Destinationcity updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @destinationcity = Destinationcity.find(params[:id])

    @destinationcity.destroy

    redirect_to "/destinationcities", :notice => "Destinationcity deleted."
  end
end
