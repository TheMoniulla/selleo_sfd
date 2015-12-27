class Order < ActiveRecord::Base
  has_many :order_items, inverse_of: :order

  validates :state, presence: true, inclusion: {in: %w(open close)}
  validate :only_one_open_order_can_exist

  private

  def only_one_open_order_can_exist
    if Order.where(state: 'open').count > 0
      errors.add(:state, 'there can be only one open order')
    end
  end
end
