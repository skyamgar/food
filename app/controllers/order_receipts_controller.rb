class OrderReceiptsController < ApplicationController
  def show
    @order_receipt = OrderReceipt.find(params[:id])
  end
end
