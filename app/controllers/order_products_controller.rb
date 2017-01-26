class OrderProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    @order_product = @cart.add_food_item(params[:food_item_id])

    if @order_product.save
      redirect_to :root, notice: "Added item successfully."
    else
      redirect_to :root
    end
  end
end
