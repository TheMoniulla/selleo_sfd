class Orderer::OrderItemsController < Orderer::OrdererController
  def index
    @order_items = OrderItem.where(order_id: nil)
  end
end
