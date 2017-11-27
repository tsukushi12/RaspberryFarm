class CreateWaterings < ActiveRecord::Migration[5.1]
  def change
    create_table :waterings do |t|
      t.integer :status
      t.references :farm, foreign_key: true

      t.timestamps
    end
  end
end
