class Orderer::OrderItemsController < Orderer::OrdererController
  def index
    @order_items = OrderItem.where(order_id: nil)
    @ordered_items = OrderItem.where(order_id: current_order.id)
  end

  def update
    @order_item = OrderItem.find(params[:id])
    @order_item.update_attributes(order_id: current_order.id)
    redirect_to orderer_order_items_path
  end
end
