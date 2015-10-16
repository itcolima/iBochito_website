class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.references :movement_catalogs, index: true #, foreign_key: true
      t.integer :quantity
      t.timestamps null: false
    end
    add_foreign_key :movements, :movement_catalogs, column: :movement_catalogs_id
  end
end
