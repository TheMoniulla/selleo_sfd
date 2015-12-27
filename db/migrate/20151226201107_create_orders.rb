class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :state
      t.date :closed_at
      t.timestamps
    end
  end
end
