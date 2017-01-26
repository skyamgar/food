class AddFoodItemIdToOrderProduct < ActiveRecord::Migration
  def change
    add_column :order_products, :food_item_id, :integer
  end
end
