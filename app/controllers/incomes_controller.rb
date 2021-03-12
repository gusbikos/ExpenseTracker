class IncomesController < ApplicationController

    def index 
        
    end 

    def show 
        @income = Income.find(params[:id])
        
    end 

    def new 
        @income = Income.new
        @user = session[:user_id]
    end 
    
    def create 
        @income = @current_user.incomes.create(income_params)
        redirect_to user_path(@current_user)
    end 

    def edit 
        @income = Income.find(params[:id])
        @user = session[:user_id]
    end 

    def update 
        @income = Income.find(params[:id])
        @income = Income.update(income_params)
        redirect_to user_path
    end 

    def destroy 
        income = Income.find(params[:id]) 
        income.destroy
        redirect_to user_path
    end 

    private 

    def income_params
        params.require(:income).permit(:name, :amount, :description)
    end 
end
