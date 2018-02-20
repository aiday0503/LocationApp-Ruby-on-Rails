class LocationsController < ApplicationController
  def new
  end

  def index
    @locations = Location.all
  end

  def create
    Location.create(name: params[:name], street: params[:street], zipcode: params[:zipcode])
    redirect_to "/locations"
  end

  def show
    @location = Location.find(params[:id])
  end
  def edit
    @location = Location.find(params[:id])
  end
  def update
    location = Location.find(params[:id])
    location.name = params[:name]
    location.street = params[:street]
    location.zipcode = params[:zipcode]
    location.save
    redirect_to "/locations"
  end
  def destroy
    location = Location.find(params[:id])
    location.destroy
    redirect_to "/locations"
  end

end
