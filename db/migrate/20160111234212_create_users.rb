class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.float :money_status
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
