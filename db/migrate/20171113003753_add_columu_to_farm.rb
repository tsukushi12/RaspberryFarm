class AddColumuToFarm < ActiveRecord::Migration[5.1]
  def change
    add_column :farms, :watering_status, :integer
  end
end
