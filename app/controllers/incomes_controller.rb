class IncomesController < ApplicationController

    def index 
        
    end 

    def show 
        @income = Income.find(params[:id])
        
    end 

    def new 
        @income = Income.new
        @users = User.all
    end 
    
    def create 
        @income = Income.create(income_params)
        @user = User.find_by(params[:id]) 
        redirect_to income_path(@income)
    end 

    def edit 
        @income = Income.find(params[:id])
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
