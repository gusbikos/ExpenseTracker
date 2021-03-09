class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :bank_account
  belongs_to :expense
  belongs_to :income
  belongs_to :portfolio
end
