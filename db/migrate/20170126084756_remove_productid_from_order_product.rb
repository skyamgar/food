class RemoveProductidFromOrderProduct < ActiveRecord::Migration
  def change
    remove_column :order_products, :product_id, :integer
  end
end
