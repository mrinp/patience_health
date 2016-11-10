class CreateHealthDetails < ActiveRecord::Migration
  def change
    create_table :health_details do |t|

      t.timestamps

    end
  end
end
