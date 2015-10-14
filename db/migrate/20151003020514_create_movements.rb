class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.references :movement_catalogs, index: true, foreign_key: true
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
