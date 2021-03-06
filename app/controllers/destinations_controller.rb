class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new
    @destination.trip_id = params[:trip_id]
    @destination.country_id = params[:country_id]

    if @destination.save
      redirect_to "/trips/#{@destination.trip_id}", :notice => "Destination created successfully."
    else
      redirect_to "/trips/#{@destination.trip_id}", :notice => "Destination already exists."
    end
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])

    @destination.trip_id = params[:trip_id]
    @destination.country_id = params[:country_id]

    if @destination.save
      redirect_to "/trips/#{@destination.trip_id}", :notice => "Destination updated successfully."
    else
      render 'edit', :notice => "Destination already exists."
    end
  end

  def destroy
    @destination = Destination.find(params[:id])

    @destination.destroy

    redirect_to "/trips/#{@destination.trip_id}", :notice => "Destination deleted."
  end
end
