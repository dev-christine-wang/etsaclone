class Api::CartItemsController < ApplicationController
  def index
    @cart_items = current_user.carts[-1].cart_items
    render :index
  end

  def create
    @cart_item = current_user.cart_items.new(cart_item_params)

    if @cart_item.save
      render :show
    else
      render json: @cart_item.errors.messages, status: 422
    end
  end

  def update
    @cart_item = Cart.find(params[:id])

    if @cart_item.update(cart_item_params)
      render :show
    else
      render json: @cart_item.errors.messages, status: 422
    end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:cart_id, :item_id, :item_quantity)
  end
end
