class Recipe < ApplicationRecord

  MEAL_TYPES = [
    :lunch,
    :dinner
  ]

  belongs_to :entry
  has_many :ingredients

  validates :name, presence: true
end
