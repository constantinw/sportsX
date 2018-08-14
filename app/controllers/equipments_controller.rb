class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index
    @equipments = Equipment.all
  end

  def show
    @equipment = Equipment.find(equipment_params)
    @booking = Booking.new
    @booking.equipment = @equipment
    @booking.user = current_user
  end

  private

  def equipment_params
    params.require(:equipment).permit(:category, :brand, :product_name, :size, :location, :price_per_day)
  end
end