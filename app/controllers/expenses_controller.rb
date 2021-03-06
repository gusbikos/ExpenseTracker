class ExpensesController < ApplicationController

    def index 

    end 

    def show 
        @expense = Expense.find(params[:id])
    end 

    def new
        @expense = Expense.new
        @user = session[:user_id] 
    end 

    def create 
        @expense = @current_user.expenses.create(expense_params)
        redirect_to user_path(@current_user)
    end 

    def edit 
       @expense = Expense.find(params[:id])
       @user = session[:user_id] 
    end 

    def update 
        @expense = Expense.find(params[:id])
        @expense = Expense.update(expense_params)
        redirect_to expense_path
    end 

    def destroy 
        expense = Expense.find(params[:id]) 
        expense.destroy
        redirect_to expense_path
    end 

    private 

    def expense_params
        params.require(:expense).permit(:name, :amount, :description)
    end 
end
