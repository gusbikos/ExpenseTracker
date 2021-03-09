class BankAccountsController < ApplicationController

    def index 

    end 

    def show 
        @bank_account = BankAccount.find(params[:id])
    end 

    def new
        @bank_account = BankAccount.new 
        @users = User.all 
    end 

    def create 
        @bank_account = BankAccount.create(bank_account_params)
        #@user = User.find_by(params[:id])        
        redirect_to bank_account_path(@bank_account)
    end 

    def edit 
       @bank_account = BankAccount.find(params[:id])
    end 

    def update 
        #@bank_account = BankAccount.find(params[:id])
        @bank_account = BankAccount.update(bank_account_params)
        redirect_to bank_account_path(@bank_account)
    end 

    def destroy 
        bank_account = BankAccount.find(params[:id]) 
        bank_account.destroy
        redirect_to bank_accounts_path
    end 

    private 

    def bank_account_params 
        params.require(:bank_account).permit(:name, :routing_number, :account_number)
    end 

end
