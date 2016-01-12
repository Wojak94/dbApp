class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :operator_id
      t.datetime :report_time
      t.text :report_content

      t.timestamps null: false
    end
  end
end
