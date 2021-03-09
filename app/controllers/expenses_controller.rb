class ExpensesController < ApplicationController

    def index 

    end 

    def show 
        @expense = Expense.find(params[:id])
    end 

    def new
        @expense = Expense.new 
    end 

    def create 
        @expense = Expense.create(expense_params)
        redirect_to expense_path(@expense)
    end 

    def edit 
       @expense = Expense.find(params[:id])
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
