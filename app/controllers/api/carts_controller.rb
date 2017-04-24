class Api::CartsController < ApplicationController
  def index
    @carts = current_user.carts[0...-1]
    render :index
  end
end
