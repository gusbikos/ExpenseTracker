class UsersController < ApplicationController

    def index 

    end

    def show 
        @user = User.find(params[:id])
        @transactions = @user.transactions
        # @transactions = Transaction.all
        # @incomes = Income.all
        # @expenses = Expense.all
        #@income = Income.find(params[:id])
    end 

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end

    def edit
        @user = User.find(params[:id])
    end 
    
    def update 
        @user = User.find(params[:id])
        @user = User.update(user_params)
        redirect_to user_path(@user)
    end 

    def destroy 
        user = User.find(params[:id]) 
        user.destroy
        redirect_to new_user_path
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :email, :password_digest)
    end 


end
