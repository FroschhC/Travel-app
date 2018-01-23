class LocationsController < ApplicationController
  before_action :authenticate_user!

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    if @location.save
      flash[:notice] = "Location Successfully Added!"
      redirect_to '/'
    else
      flash[:notice] = "Location Failed to Add"
      render :action => 'new'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    flash[:notice] = "Location Deleted Successfully!"
    redirect_to '/'
  end

  private

  def location_params
    params.require(:location).permit(:address, :rating)
  end
end
