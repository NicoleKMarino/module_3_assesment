require 'ostruct'


class BestBuyService

  def initialize
    @connection = Faraday.new("https://api.bestbuy.com/")
    @connection.params["apiKey"] = ENV["best_buy_key"]
    @connection.params["format"] = "json"
  end

  def find_stores(zipcode)
    response = @connection.get "/v1/stores(area(#{zipcode},25))"
    JSON.parse(response.body, object_class: OpenStruct)
  end

  def find_store(id)
    response = @connection.get "v1/stores(storeId=#{id})"
    JSON.parse(response.body, object_class: OpenStruct)
 end

end
