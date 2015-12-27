class Orderer::OrdersController < Orderer::OrdererController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def update
    if current_order.order_items.blank?
      flash[:alert] = "This order has not any order items!"
    else
      current_order.update_attributes(state: 'closed', closed_at: Time.now)
      flash[:notice] = "Order has been closed!"
    end
    redirect_to orderer_order_items_path
  end
end
