class Api::V1::RecipesController < ApplicationController
  def index
    render json: RecipeSerializer.new(Recipe.all)
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: RecipeSerializer.new(Recipe.all), status: :accepted
    else
      render json: {status: "error", message: recipe.errors.full_messages }
    end
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    render json: RecipeSerializer.new(recipe), status: :accepted
  end

  def destroy
    Recipe.find(params[:id]).destroy
    render json: RecipeSerializer.new(Recipe.all), status: :accepted
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cook_time, :made, ingredient_ids: [])
  end
end
