class SearchController < ApplicationController
  def index
    hash = bb_services.find_stores(params[:zipcode])
    @stores = hash["stores"]
    @total = hash["total"]
  end

  def show
  end
  
end
