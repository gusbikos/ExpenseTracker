class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :bank_account, null: false, foreign_key: true
      t.belongs_to :expense, null: false, foreign_key: true
      t.belongs_to :income, null: false, foreign_key: true
      t.belongs_to :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
