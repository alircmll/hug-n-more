class ChangeCheckinFromBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :check_in, "date USING check_in::date"
  end
end
