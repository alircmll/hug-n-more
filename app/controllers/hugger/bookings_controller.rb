class Hugger::BookingsController < ApplicationController  
  def edit
    @bookings = current_user.bookings
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.progress = params[:progress]    

    if @booking.save
      redirect_to edit_hugger_hug_booking_path
    else
      render :new
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:progress)
  end
end
