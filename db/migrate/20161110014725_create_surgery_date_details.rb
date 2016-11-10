class CreateSurgeryDateDetails < ActiveRecord::Migration
  def change
    create_table :surgery_date_details do |t|
      t.integer :user
      t.date :date_of_surgery
      t.string :surgeon
      t.string :primary_physician
      t.string :location
      t.string :type_of_surgery

      t.timestamps

    end
  end
end
