class Order < ActiveRecord::Base
  has_many :order_products, dependent: :destroy

  def add_order_products_from_cart(cart)
    total_amount = 0
    cart.order_products.each do |order_product|
      order_product.cart = nil
      order_products << order_product
      total_amount = total_amount + (order_product.quantity * order_product.food_item.price)
    end
    self.amount = total_amount
  end
end
