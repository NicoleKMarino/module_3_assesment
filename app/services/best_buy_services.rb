class BestBuyService
  def initialize
    @connection = Faraday.new("https://api.bestbuy.com/")
    @connection.params["apiKey"] = ENV["best_buy_key"]
    @connection.params["format"] = "json"
  end

end
