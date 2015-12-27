class User::PastOrdersController < User::UserController
  def index
    @past_orders = Order.closed
  end

  def show
    @past_order = Order.find(params[:id])
    @order_items = @past_order.order_items
  end
end
