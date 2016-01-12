class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :flat_number
      t.string :city
      t.string :postcode

      t.timestamps null: false
    end
  end
end
