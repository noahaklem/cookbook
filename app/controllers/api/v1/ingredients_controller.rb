class Api::V1::IngredientsController < ApplicationController

  def index
    render json: Ingredient.all
  end

  def create
    Ingredient.new(ingredient_params)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :measurement, :quantity, :recipe_id)
  end

end
