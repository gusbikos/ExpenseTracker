class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :from
      t.string :symbol
      t.float :close
      t.integer :share
      t.belongs_to :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
