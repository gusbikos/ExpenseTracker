class TransactionsController < ApplicationController

    def index 

    end 

    def show 
        @transaction = Transaction.find(params[:id])
    end 

    def new
        @transaction = Transaction.new 
        @incomes = Income.all
        @expenses = Expense.all
        @bank_accounts = BankAccount.all
        @users = User.all
        @portfolios = Portfolio.all
    end 

    def create 
        
        @transaction = Transaction.create(transaction_params)
        #@transaction = Transaction.find_by(params[:id])
        #@user = User.find_by(params[:id])        
        redirect_to user_path(@transaction.user_id)
    end 

    def edit 
       @transaction = Transaction.find(params[:id])
    end 

    def update 
        @transaction = Transaction.find(params[:id])
        @transaction = Transaction.update(transaction_params)
        redirect_to transaction_path(@transaction)
    end 

    def destroy 
        transaction = Transaction.find(params[:id]) 
        transaction.destroy
        redirect_to transactions_path
    end 

    private 

    def transaction_params 
        params.require(:transaction).permit(:user_id, :bank_account_id, :expense_id, :income_id, :portfolio_id)
    end 

end
