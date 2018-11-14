class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    product = Product.new(product_params)
    product.save!
    redirect_to products_url, notice: "「#{product.name}」を登録しました。"
  end

  private

  def product_params
    params.require(:product).permit(:name,:product_description,:price,:release_date)
  end
end
