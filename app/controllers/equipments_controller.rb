class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @equipments = Equipment.where.not(latitude: nil, longitude: nil).search_by_product_name(params[:query])
    else
      @equipments = Equipment.where.not(latitude: nil, longitude: nil)
    end
    @markers = @equipments.map do |equipment|
      {
        lat: equipment.latitude,
        lng: equipment.longitude#,
      }
    end
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.user = current_user
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :new
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
    @booking = Booking.new
    @booking.equipment = @equipment
    @booking.user = current_user
    @markers = [{
      lat: @equipment.latitude,
      lng: @equipment.longitude
    }]
  end

  private

  def equipment_params
    params.require(:equipment).permit(:category, :brand, :product_name, :size, :location, :price_per_day, :photo)
  end
end
