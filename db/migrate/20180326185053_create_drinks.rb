class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :size_oz
      t.boolean :alcoholic
      t.references :fridge, foreign_key: true

      t.timestamps
    end
  end
end
