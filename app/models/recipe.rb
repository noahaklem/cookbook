class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy

  validates :name, :cook_time, presence: true;
  
end
