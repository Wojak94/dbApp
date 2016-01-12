class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.integer :bike_id
      t.integer :serviceman_id
      t.datetime :start_time
      t.datetime :end_time
      t.string :repair_status

      t.timestamps null: false
    end
  end
end
