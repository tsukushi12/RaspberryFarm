class CangeWateringStatusDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :farms, :watering_status, 0
  end
end
