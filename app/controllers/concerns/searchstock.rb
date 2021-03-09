
module Searchstock
    class Search
      def self.by_stock(ticker)
        day_behind = (Time.now - 1.day).to_s.split(" ")[0]
        Faraday.get "https://api.polygon.io/v1/open-close/#{ticker}/#{day_behind}?unadjusted=true&apiKey=#{ENV['API_KEY']}"
      end
    end
end
  