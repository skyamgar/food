class FoodItem < ActiveRecord::Base
  has_many :order_products
end
