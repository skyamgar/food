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

  def destroy
    order_product = OrderProduct.find(params[:id])
    if order_product.quantity <= 1
      order_product.destroy
    else
      order_product.quantity -= 1
    end

    if order_product.save
      if @cart.order_products.empty?
        redirect_to :root, notice: "Item deleted successfully"
      else
        redirect_to cart_path(@cart), notice: "Item deleted successfully"
      end
    else
      redirect_to :root, notice: "Can not be Deleted"
    end
  end
end
