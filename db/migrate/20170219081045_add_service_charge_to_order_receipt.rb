class AddServiceChargeToOrderReceipt < ActiveRecord::Migration
  def change
    add_column :order_receipts, :service_charge, :float
  end
end
