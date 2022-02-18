class Api::V1::RecipesController < ApplicationController
  def index
    render json: Recipe.all
  end

  def create
    Recipe.new(recipe_params)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cook_time, ingredient_ids: [])
  end
end
