class Hugger::BookingsController < ApplicationController
  def edit
    @booking = Booking.find(params[:id])
    @hug = @booking.hug
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
    redirect_to bookings_path, notice: 'Your hug was successfully updated.'
  end

  private

  def bookings_params
    params.require(:booking).permit(:progress)
  end
end
