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


  def pendings
    @bookings = Booking.all
  end

  def previous
    @bookings = Booking.all
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :status)
  end
end
