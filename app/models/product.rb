class Product < ActiveRecord::Base
  has_many :order_items, inverse_of: :product

  validates :name, :url, presence: true, uniqueness: true
end