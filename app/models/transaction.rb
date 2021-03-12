class Transaction < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :bank_account, optional: true
  belongs_to :expense, optional: true
  belongs_to :income, optional: true
  belongs_to :stock, optional: true
end
