class SearchController < ApplicationController
  def index
    @stores = bb_services.find_stores(params[:zipcode])
  end 

  def show
  end
end
