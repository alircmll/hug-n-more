class ChangeCheckoutFromBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :check_out, "date USING check_out::date"
  end
end
