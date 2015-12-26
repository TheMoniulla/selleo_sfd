class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :order_id
      t.integer :quantity
      t.text :note
      t.timestamps
    end
  end
end
