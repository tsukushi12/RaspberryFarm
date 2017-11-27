class AddColumuToFarmStatus < ActiveRecord::Migration[5.1]
  def change
    add_reference :farm_statuses, :farm, foreign_key: true
  end
end
