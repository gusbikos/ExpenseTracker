class StocksController < ApplicationController

    def index

    end

    def search
        if params['stock']
            @response = Searchstock::Search.by_stock(params['stock'])
        end
    end

end
