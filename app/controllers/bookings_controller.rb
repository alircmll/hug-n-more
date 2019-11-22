class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @hug = Hug.find(params[:hug_id])
  end

  def create
    @hug = Hug.find(params[:hug_id])
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.hug = @hug

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:check_in, :check_out, :hug_id)
  end
end
