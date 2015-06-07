class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])

    #creating new destination
    #@destination = Destination.new
    #@destination.trip_id = :id
    #@destination.country_id = params[:country_id]

    #if @destination.save
     # redirect_to "/trips/:id", :notice => "Destination created successfully."
    #else
     # render 'new'
    #end
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new
    @trip.name = params[:name]
    @trip.description = params[:description]
    @trip.start_date = params[:start_date]
    @trip.end_date = params[:end_date]

    if @trip.save
      redirect_to "/trips", :notice => "Trip created successfully."
    else
      render 'new'
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])

    @trip.name = params[:name]
    @trip.description = params[:description]
    @trip.start_date = params[:start_date]
    @trip.end_date = params[:end_date]

    if @trip.save
      redirect_to "/trips", :notice => "Trip updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])

    @trip.destroy

    redirect_to "/trips", :notice => "Trip deleted."
  end
end
