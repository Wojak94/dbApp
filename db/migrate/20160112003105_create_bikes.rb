class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.integer :station_id
      t.string :bike_status

      t.timestamps null: false
    end
  end
end
