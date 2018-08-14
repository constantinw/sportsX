class EquipmentsController < ApplicationController
before_action :set_equipment, only: [:show ]
skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @equipments = Equipment.all
  end

  def show
    @booking = Booking.new
    @booking.equipment = @equipment
    @booking.user = current_user
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

  private

  def equipment_params
    params.require(:equipment).permit(:category, :brand, :product_name, :size, :location, :price_per_day)
  end

  def set_equipment
    @equipment = Equipment.find(params[:id])
  end
end
