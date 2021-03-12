class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.belongs_to :user
      t.belongs_to :bank_account
      t.belongs_to :expense
      t.belongs_to :income
      t.belongs_to :portfolio
      t.belongs_to :stock
      
      t.timestamps
    end
  end
end
