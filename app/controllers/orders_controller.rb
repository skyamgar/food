class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    order = Order.new
    order.add_order_products_from_cart(@cart)
    if order.save
      @cart.destroy
      session[:cart_id] = nil
      redirect_to :root, notice: "Order Created Successfully."
    else
      redirect_to :root, notice: "Please recreate the Order."
    end
  end
end
