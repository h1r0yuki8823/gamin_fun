class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    #@product = Product.all.includes(:reviews)
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to product_url, notice: "「#{product.name}」を更新しました。"
  end

  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to @product, notice: "「#{@product.name}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to product_url, notice: "「#{product.name}」を削除しました。"
  end

  private

  def product_params
    params.require(:product).permit(:name,:maker_id, :category_id,:product_description,:price,:release_date)
  end
end
