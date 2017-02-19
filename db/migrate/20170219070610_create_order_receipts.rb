class CreateOrderReceipts < ActiveRecord::Migration
  def change
    create_table :order_receipts do |t|
      t.float :total_amount
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
