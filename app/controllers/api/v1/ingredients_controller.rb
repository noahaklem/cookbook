class Api::V1::IngredientsController < ApplicationController

  def index
    render json: IngredientSerializer.new(Ingredient.all)
  end

  def create
    ingredient = Ingredient.new(ingredient_params)
    if ingredient.save
      render json: IngredientSerializer.new(ingredient)
    else
      render plain: "uh oh..."
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :measurement, :quantity, :recipe_id)
  end

end
