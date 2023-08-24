class Entry < ApplicationRecord
  has_one :recipe

  attr_reader :recipe

  def recipe
    Recipe.find recipe_id if recipe_id.present?
  end
end
