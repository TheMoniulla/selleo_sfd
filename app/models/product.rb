class Product < ActiveRecord::Base
  validates :name, :url, presence: true, uniqueness: true
end