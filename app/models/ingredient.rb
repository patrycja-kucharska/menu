class Ingredient < ApplicationRecord

  belongs_to :recipe
  has_one :product

  def name
    Product.find(self.product_id).name
  end

  def unit
    Product.find(self.product_id).unit
  end

  def quantity_unit
    "#{self.quantity} #{self.unit}"
  end

end
