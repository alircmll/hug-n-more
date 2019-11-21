class Hugger::BookingsController < ApplicationController  
  def edit
    @pendings = current_user.bookings.filter { |booking| booking.pending? }.sort_by { |booking| booking.check_in}.reverse
    @accepteds = current_user.bookings.filter { |booking| booking.accepted? }.sort_by { |booking| booking.check_in}.reverse
    @refuseds  = current_user.bookings.filter { |booking| booking.refused? }.sort_by { |booking| booking.check_in}.reverse
    @canceleds  = current_user.bookings.filter { |booking| booking.canceled? }.sort_by { |booking| booking.check_in}.reverse
  
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
