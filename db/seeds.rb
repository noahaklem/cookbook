# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 7.times do 
  name = Faker::Food.dish
  cook_time = [10,20,40,15,25].sample
  made = false
  Recipe.create(name: name, cook_time: cook_time, made: made)
 end

 10.times do
  recipe = Recipe.all.sample
  name = Faker::Food.ingredient
  measurement = ["cups", "teaspoon", "tablespoon", "gallon"].sample
  quantity = [1,3,6,12,2].sample
  Ingredient.create(recipe: recipe, name: name, measurement: measurement, quantity: quantity)
 end

 puts "seeds completed"