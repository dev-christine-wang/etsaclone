class Api::ItemsController < ApplicationController
  def index
    @items = Item.all
    render :index
  end

  def show
    @item = Item.find(params[:id])
    render :show
  end
end
