class TwitterClient
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "l6pPe5PPOLyvifEDGy5NbXEIy"
      config.consumer_secret     = "u4dTFcrTaY6vBwT6XZM7ek6xV0pRiUWyriDhFck0IxpV8CVM42"
      config.access_token        = "2299909334-v8lpY1x82NGUgsMJ0AApVhH7j9KRlBCPewJFqqC"
      config.access_token_secret = "RK8okz3gpnAdS0gGUB3BijnOqnHjTjjM1WDA8x9j0lJec"
    end
  end

  def search(query)
    @client.search(query)
  end
end
