class OrderReceipt < ActiveRecord::Base
  belongs_to :order
  before_save :calculate_total_amount

  def calculate_total_amount
    self.service_charge = order.amount * 0.15
    self.total_amount = order.amount + service_charge
  end
end
