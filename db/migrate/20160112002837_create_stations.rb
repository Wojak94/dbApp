class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.integer :location_id
      t.integer :bike_quantity

      t.timestamps null: false
    end
  end
end
