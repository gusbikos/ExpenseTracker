class User < ApplicationRecord
    has_many :transactions
    has_many :expenses, through: :transactions
    has_many :incomes, through: :transactions
    has_many :bank_accounts, through: :transactions
    has_many :stocks, through: :transactions

    has_secure_password

    def price_of_stock
        stocks.map(&:share).sum * stocks.map(&:close).sum
    end

    def total_shares
        stocks.map(&:share).sum
    end


    def total_balance
        incomes.map(&:amount).sum - expenses.map(&:amount).sum
    end
end
