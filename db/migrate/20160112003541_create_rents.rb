class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :user_id
      t.integer :bike_id
      t.integer :rent_place
      t.integer :return_place
      t.datetime :rent_time
      t.datetime :return_time

      t.timestamps null: false
    end
  end
end
