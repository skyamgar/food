class FoodItem < ActiveRecord::Base
  acts_as_taggable
  has_many :order_products
end
