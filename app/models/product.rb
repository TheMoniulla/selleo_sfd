class Product < ActiveRecord::Base
  has_many :order_items, inverse_of: :product

  before_validation :clean_url

  validates :name, :url, presence: true, uniqueness: true
  validates :url, format: {with: /\Ahttp:\/\/www.sfd.pl\/sklep\/[\w\-.]+/}

  private

  def clean_url
    self.url = url.split('#').first if url
  end
end
