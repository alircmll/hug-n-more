class ChangeProgressFromBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :progress, :integer, default: 0
  end
end
