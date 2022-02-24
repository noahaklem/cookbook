class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :cook_time, :made, :ingredients
end
