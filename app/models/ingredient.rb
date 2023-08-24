class Ingredient < ApplicationRecord

  belongs_to :recipe
  has_one :product

  def name
    Product.find(self.product_id).name
  end

end
