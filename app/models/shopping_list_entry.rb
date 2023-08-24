class ShoppingListEntry < ApplicationRecord
  belongs_to :shopping_list
  has_many :ingredient
end
