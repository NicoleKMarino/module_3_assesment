class SearchController < ApplicationController
  def index
    @stores = bb_services.find_stores(params[:zipcode])["stores"]
  end

  def show
  end
end
