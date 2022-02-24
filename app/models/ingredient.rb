class Ingredient < ApplicationRecord
  belongs_to :recipe

  valdiates :cook_time, presence: true
end
