class BankAccountsController < ApplicationController

    def index 

    end 

    def show 
        @bank_account = BankAccount.find(params[:id])
    end 

    def new
        @bank_account = BankAccount.new 
        @user = session[:user_id] 
    end 

    def create 
        if session[:user_id]
            @bank_account = @current_user.bank_accounts.create(bank_account_params)
        end
        
        redirect_to user_path(@current_user)
    end 

    def edit 
       @bank_account = BankAccount.find(params[:id])
       @user = session[:user_id] 
    end 

    def update 
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
