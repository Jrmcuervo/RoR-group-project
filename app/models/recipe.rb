class Recipe < ApplicationRecord
  has_many :recipe_food, dependent: :destroy
  has_many :foods, through: :recipe_food
  belongs_to :user
end
