class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :password_confirmation
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
