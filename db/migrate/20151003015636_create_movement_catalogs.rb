class CreateMovementCatalogs < ActiveRecord::Migration
  def change
    create_table :movement_catalogs do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
