class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :name
      t.integer :quantity
      t.string :measurement

      t.timestamps
    end
  end
end
