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
    @item = Item.create(item_params)
    respond_with @item
  end

  def destroy
    @item = Item.find(params[:id]).destroy
    head :no_content
  end

  private

  def item_params
    params.permit(:name,:description,:image_url)
  end

end
