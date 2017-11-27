class CreateFarmStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :farm_statuses do |t|
      t.binary :img
      t.integer :light
      t.integer :temp
      t.integer :humi
      t.integer :soil_humi

      t.timestamps
    end
  end
end
