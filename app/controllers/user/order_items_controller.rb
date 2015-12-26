class User::OrderItemsController < User::UserController
  before_action :get_order_item, only: [:edit, :update, :destroy]

  def index
    @order_items = current_user.order_items
  end

  def new
    @order_item = current_user.order_items.new
  end

  def create
    @order_item = current_user.order_items.new(order_item_params)
    if @order_item.save
      redirect_to user_order_items_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @order_item.update_attributes(order_item_params)
      redirect_to user_order_items_path
    else
      render :edit
    end
  end

  def destroy
    @order_item.destroy
    redirect_to user_order_items_path
  end

  private

  def get_order_item
    @order_item = current_user.order_items.find(params[:id])
  end

  def order_item_params
    params.require(:order_item).permit(:quantity, :note, :product_id)
  end
end
