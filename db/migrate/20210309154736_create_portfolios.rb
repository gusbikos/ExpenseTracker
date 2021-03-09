class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.float :amount

      t.timestamps
    end
  end
end
