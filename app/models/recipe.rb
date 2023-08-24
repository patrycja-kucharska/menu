class Recipe < ApplicationRecord

  MEAL_TYPES = [
    :lunch,
    :dinner
  ]

  belongs_to :entry

  validates :name, presence: true
end
