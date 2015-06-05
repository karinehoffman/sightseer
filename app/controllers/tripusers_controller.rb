class TripusersController < ApplicationController
  def index
    @tripusers = Tripuser.all
  end

  def show
    @tripuser = Tripuser.find(params[:id])
  end

  def new
    @tripuser = Tripuser.new
  end

  def create
    @tripuser = Tripuser.new
    @tripuser.trip_id = params[:trip_id]
    @tripuser.user_id = params[:user_id]

    if @tripuser.save
      redirect_to "/tripusers", :notice => "Tripuser created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tripuser = Tripuser.find(params[:id])
  end

  def update
    @tripuser = Tripuser.find(params[:id])

    @tripuser.trip_id = params[:trip_id]
    @tripuser.user_id = params[:user_id]

    if @tripuser.save
      redirect_to "/tripusers", :notice => "Tripuser updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tripuser = Tripuser.find(params[:id])

    @tripuser.destroy

    redirect_to "/tripusers", :notice => "Tripuser deleted."
  end
end
