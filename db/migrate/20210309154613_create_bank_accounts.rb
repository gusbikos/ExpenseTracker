class CreateBankAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.integer :account_number
      t.integer :routing_number

      t.timestamps
    end
  end
end
