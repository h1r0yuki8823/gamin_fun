class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @product_id = params[:id]
    @product_name = params[:name]
    
  end

  def edit
  end

  def create
  @review = Review.new(comment_params)
  end

  #確認画面遷移
  def confirm
    @review = Review.new(comment_params)
    
  end

  def update
  end

  def destroy
  end

  private 
  def comment_params
    params.require(:review).permit(:content, :product_id, :title)
  end

end
