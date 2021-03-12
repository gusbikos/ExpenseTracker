class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.float :amount
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
