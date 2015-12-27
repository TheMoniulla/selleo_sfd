class Orderer::OrdererController < ApplicationController
  before_action :check_orderer
  before_action :create_open_order

  private

  def check_orderer
    unless current_user && current_user.orderer?
      redirect_to root_path, alert: 'You have to be logged in as orderer to see this page.'
    end
  end

  def create_open_order
    Order.create(state: 'open') unless current_order
  end
end
