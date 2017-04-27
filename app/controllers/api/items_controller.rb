class Api::ItemsController < ApplicationController
  def index
    if params[:searchWords].present?
      @items = Item.search_by_item_details(params[:searchWords])
    else
      @items = Item.all
    end
    render :index
  end

  def show
    @item = Item.find(params[:id])
    render :show
  end
end
