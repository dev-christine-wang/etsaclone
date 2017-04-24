class Api::CartsController < ApplicationController
  def index
    @carts = current_user.carts
    render :index
  end
end
