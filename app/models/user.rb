class User < ApplicationRecord
    has_many :transactions
    has_many :expenses, through: :transactions
    has_many :incomes, through: :transactions
    has_many :bank_accounts, through: :transactions
    has_many :portfolios, through: :transactions
 
end
