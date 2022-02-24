class AddMadeRecipeToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :made, :boolean
  end
end
