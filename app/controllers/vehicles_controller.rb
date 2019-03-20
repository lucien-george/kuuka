class VehiclesController < ApplicationController
  before_action :find_vehicle, only: %i[show update edit destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @vehicles = Vehicle.all
  end

  def show
  end

  def new
    @vehicle = Storage.new
  end

  def create
    @vehicle = Storage.new(storage_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to storage_path(@vehicle)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @vehicle.update(storage_params)
    if @vehicle.save
      redirect_to storage_path(@vehicle)
    else
      render :edit
    end
  end

  def destroy
    @vehicle.destroy
    redirect_to root_path
  end

  private

  def find_storage
    @vehicle = Vehicle.find(params[:id])
  end

  def storage_params
    params.require(:vehicle).permit(:make, :year, :owner, :color, :inspection_card, :diesel, :property_insurance, :insurance, { photos: [] })
  end
end
