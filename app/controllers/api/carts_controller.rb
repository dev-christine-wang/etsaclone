class Api::CartsController < ApplicationController
  def create
    @cart = current_user.carts.new(cart_params)

    if @cart.save
      render :show
    else
      render json: @cart.errors.messages, status: 422
    end
  end

  def index
    @carts = current_user.carts
    render :index
  end

  def update
    @cart = Cart.find(cart_params[:id])
    @cart.user_id = current_user.id

    if @cart.update(cart_params)
      render :show
    else
      render json: @cart.errors.messages, status: 422
    end
  end

  private

  def cart_params
    params.require(:cart).permit(:id, :purchased)
  end
end
