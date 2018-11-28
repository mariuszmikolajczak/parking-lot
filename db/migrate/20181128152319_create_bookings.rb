class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :parking_spot, null: false
      t.datetime :from, null: false
      t.datetime :to

      t.timestamps
    end
  end
end
