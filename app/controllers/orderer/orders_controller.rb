class Orderer::OrdersController < Orderer::OrdererController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end
end