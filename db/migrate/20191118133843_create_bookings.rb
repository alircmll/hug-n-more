class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :check_in
      t.string :check_out
      t.integer :progress
      t.references :user, foreign_key: true
      t.references :hug, foreign_key: true

      t.timestamps
    end
  end
end
