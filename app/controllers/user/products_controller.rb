class User::ProductsController < User::UserController
  before_action :get_product, only: [:edit, :destroy, :update]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to user_products_path
    else
      render :new
    end
  end

  def update
    if @product.update_attributes(product_params)
      redirect_to user_products_path
    else
      render :edit
    end
  end


  def destroy
    @product.destroy
    redirect_to user_products_path
  end

  private

  def get_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :url)
  end
end
