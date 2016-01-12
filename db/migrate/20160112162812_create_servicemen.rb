class CreateServicemen < ActiveRecord::Migration
  def change
    create_table :servicemen do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
