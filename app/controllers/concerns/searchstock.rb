
module Searchstock
    class Search
      def self.by_stock(ticker)
        # arrays data into format YYYY-MM-DD because API cannot get current date data
        day_behind = (Time.now - 1.day).to_s.split(" ")[0]
        Faraday.get "https://api.polygon.io/v1/open-close/#{ticker}/#{day_behind}?unadjusted=true&apiKey=#{ENV['API_KEY']}"
      end
    end
end
  
# url => https://yelp-com.p.rapidapi.com/
  # api => search/nearby/


# 37.788719679657554/-122.40057774847898?radius=5&term=Restaurants&offset=0
  # #{location} / #{location} / #{different_Rs} / ${5} / #{off} / #{0}
# https://yelp-com.p.rapidapi.com/business/

  #  a-Lf60V3BDdS27la95VQWA/related