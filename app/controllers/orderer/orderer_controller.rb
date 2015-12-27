class Orderer::OrdererController < ApplicationController
  before_action :check_orderer

  private

  def check_orderer
    redirect_to root_path, alert: 'You have to be logged in as orderer to see this page.' unless current_user && current_user.orderer?
  end
end
