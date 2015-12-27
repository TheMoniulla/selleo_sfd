class Orderer::OrdererController < ApplicationController
  before_action :check_orderer
  before_action :create_open_order

  private

  def check_orderer
    redirect_to root_path, alert: 'You have to be logged in as orderer to see this page.' unless current_user && current_user.orderer?
  end

  def create_open_order
    Order.create(state: 'open') if Order.where(state: 'open').empty?
  end
end
