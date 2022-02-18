class IngredientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :quantity, :measurement, :recipe
end
