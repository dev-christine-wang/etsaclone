class Api::ReviewsController < ApplicationController
  def index
    if params.has_key?(:item_id)
      @reviews = Review.where(item_id: params[:item_id])
    else
      @reviews = current_user.reviews
    end

    render :index
  end

  def show
    @review = Review.find(params[:id])
    render :show
  end

  def create
    @review = current_user.reviews.new(review_params)
    @review.user_id = current_user.id

    if @review.save
      render :show
    else
      render json: @review.errors.messages, status: 422
    end
  end

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      render :show
    else
      render json: @review.errors.messages, status: 422
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    render :show
  end

  private

  def review_params
    params.require(:review).permit(:item_id, :rating, :description)
  end
end
