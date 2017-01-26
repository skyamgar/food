class Cart < ActiveRecord::Base
  has_many :order_products

  def add_food_item(food_item_id)
    order_product = order_products.where(food_item_id: food_item_id).first
    if order_product
      order_product.quantity += 1
    else
      order_product = order_products.build(food_item_id: food_item_id)
      order_product.quantity = 1
    end
    order_product
  end
end
