class Orderer::OrderItemsController < Orderer::OrdererController
  def index
    @order_items_without_order = OrderItem.without_order
    @order_items_for_current_order = OrderItem.for_current_order(current_order.id)
  end

  def update
    @order_item = OrderItem.find(params[:id])
    @order_item.update_attributes(order_id: params[:cancel] == 'true' ? nil : current_order.id)
    redirect_to orderer_order_items_path
  end
end
