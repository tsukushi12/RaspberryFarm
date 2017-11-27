class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.binary :img
      t.integer :light
      t.integer :temp
      t.integer :humi
      t.integer :soil_humi
      t.references :farm, foreign_key: true

      t.timestamps
    end
  end
end
