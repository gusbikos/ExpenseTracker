class BankAccount < ApplicationRecord
    has_many :transactions
    has_many :users, through: :transactions
    has_many :incomes, through: :transactions
    has_many :expenses, through: :transactions
    has_many :portfolios, through: :transactions
end
