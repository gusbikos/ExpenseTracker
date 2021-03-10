class Transaction < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :bank_account, dependent: :destroy
  belongs_to :expense, dependent: :destroy
  belongs_to :income, dependent: :destroy
  belongs_to :portfolio, dependent: :destroy
end
