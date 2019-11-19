class Hugger::BookingsController < ApplicationController
  def edit
  end

  def update
  end

  private

  def bookings_params
    params.require(:booking).permit(:check_in, :check_out, :user_id, :hug_id)
  end
end
