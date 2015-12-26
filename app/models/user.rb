class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :order_items, inverse_of: :user

  def admin?
    has_role?(:admin)
  end

  def orderer?
    has_role?(:orderer)
  end
end
