module Gatherstocks
    class Search
      def self.by_stock
        Faraday.get "https://api.polygon.io/v2/reference/tickers?sort=ticker&perpage=5&page=1&apiKey=#{ENV["API_KEY"]}"
      end
    end
end