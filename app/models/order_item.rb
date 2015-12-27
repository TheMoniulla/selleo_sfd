class OrderItem < ActiveRecord::Base
  belongs_to :product, inverse_of: :order_items
  belongs_to :user, inverse_of: :order_items
  belongs_to :order, inverse_of: :order_items

  validates :product_id, :user_id, :quantity, presence: true
  validates :quantity, numericality: {only_integer: true, greater_than: 0}

  scope :current, -> (current_order_id) { where("order_id IS NULL OR order_id = ?", current_order_id).order(:created_at) }
end
