class Api::V1::RecipesController < ApplicationController
  def index
    render json: Recipe.all
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: recipe, status: :accepted
    else
      render plain: "uh oh..."
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cook_time, ingredient_ids: [])
  end
end
