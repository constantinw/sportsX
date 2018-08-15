class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.equipment = Equipment.find(params[:equipment_id])
    @booking.user = current_user
    @booking.save
    # redirect_to equipment_path(@booking.equipment)
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
