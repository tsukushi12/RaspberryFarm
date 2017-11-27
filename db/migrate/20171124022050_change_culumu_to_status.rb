class ChangeCulumuToStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :statuses, :img, :string
  end
end
