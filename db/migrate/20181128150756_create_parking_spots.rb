class CreateParkingSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_spots do |t|
      t.string :name, null: false
      t.references :spot_size, null: false
      t.references :level, null: false
      t.integer :number, null: false

      t.timestamps
    end
  end
end
