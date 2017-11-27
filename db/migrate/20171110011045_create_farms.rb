class CreateFarms < ActiveRecord::Migration[5.1]
  def change
    create_table :farms do |t|
      t.string :name
      t.integer :key
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
