class Order < ActiveRecord::Base
  belongs_to :user
  has_one :order_receipt
  has_many :order_products, dependent: :destroy

  def add_order_products_from_cart(cart)
    total_amount = 0
    cart.order_products.each do |order_product|
      order_product.cart = nil
      self.order_products << order_product
      total_amount = total_amount + order_product.amount
    end
    self.amount = total_amount
  end
end
