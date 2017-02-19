class AddAmountToOrderProduct < ActiveRecord::Migration
  def change
    add_column :order_products, :amount, :float
  end
end
