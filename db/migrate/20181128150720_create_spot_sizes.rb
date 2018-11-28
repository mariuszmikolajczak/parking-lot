class CreateSpotSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_sizes do |t|
      t.integer :size, null: false

      t.timestamps
    end
  end
end
