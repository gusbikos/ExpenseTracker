require 'json'

class StocksController < ApplicationController

    def search
        # stores the current_user
        @user =  User.find_by(id: session[:user_id]) #User.find_by(params[:id])

        # continues if conditions are true
        if params['stock'] && params['shares']
            # request from API in /concerns/searchstock.rb
            response = Searchstock::Search.by_stock(params['stock'])
            # fetch shares data
            shares = params['shares']
            
            # parsing the response data in JSON
            result = JSON.parse(response.body)

            # creates a stock 
            byebug
            stock = @user.stocks.create!(
                from: result["from"],
                symbol: result["symbol"],
                close: result["close"],
                share: shares.to_i,
            )
            
            if stock.save
                # redirect if successful
                redirect_to user_path(@user)
            else
                # redirects to stocks/search and clear state
              flash[:error] = "unsuccessful" 
              redirect_to  search_stocks_path
            end
        end
    end

end
