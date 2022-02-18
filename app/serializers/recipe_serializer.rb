class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :cook_time, :ingredients
end
