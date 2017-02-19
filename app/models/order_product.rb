class OrderProduct < ActiveRecord::Base
  belongs_to :cart
  belongs_to :order
  belongs_to :food_item

  before_save :save_amount

  def save_amount
    self.amount = quantity * food_item.price
  end
end
