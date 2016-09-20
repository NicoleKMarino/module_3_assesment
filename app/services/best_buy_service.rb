class BestBuyService

  def initialize
    @connection = Faraday.new("https://api.bestbuy.com/")
    @connection.params["apiKey"] = ENV["best_buy_key"]
    @connection.params["format"] = "json"
  end

  def find_stores(zipcode)
    response = @connection.get "/v1/stores(area(#{zipcode},25))"
    parse(response.body)
  end

  private

  def parse(response)
    JSON.parse(response)
  end

end
