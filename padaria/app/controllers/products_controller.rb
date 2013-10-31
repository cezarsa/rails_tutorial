class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :price))

    @product.save
    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
  end
end
