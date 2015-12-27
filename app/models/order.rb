class Order < ActiveRecord::Base
  has_many :order_items, inverse_of: :order

  validates :state, presence: true, inclusion: {in: %w(open close)}
end
