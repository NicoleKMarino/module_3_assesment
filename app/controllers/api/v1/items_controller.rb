class Api::V1::ItemsController < ApplicationController
  respond_to :json

  def index
    @items = Item.all
    respond_with @items
  end

  def show
    @item = Item.find(params[:id])
    respond_with @item
  end

  def create
    byebug 
    @item = Item.create(item_params)
    respond_with @item
  end

  def update
    @item = Item.update(params[:id], item_params)
    respond_with @item
  end

  private

  def item_params
    params.require(:item).permit(:name,:description,:image_url)
  end

end
