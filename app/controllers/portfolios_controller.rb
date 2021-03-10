class PortfoliosController < ApplicationController

    def index 
        
    end 

    def show 
        @portfolio = Portfolio.find(params[:id])
    end 

    def new 
        @portfolio = Portfolio.new
    end 
    
    def create 
        @portfolio = @current_user.portfolios.create(portfolio_params)
        redirect_to user_path(@current_user)
    end 

    def edit 
        @portfolio = Portfolio.find(params[:id])
        
    end 

    def update 
        @portfolio = Portfolio.find(params[:id])
        @portfolio = Portfolio.update(portfolio_params)
        redirect_to user_path
    end 

    def destroy 
        portfolio = Portfolio.find(params[:id]) 
        portfolio.destroy
        redirect_to user_path
    end 

    private 

    def portfolio_params
        params.require(:portfolio).permit(:amount)
    end 
end
