class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :cost
      t.integer :purchase_date
      t.integer :purchase_quantity
      t.integer :sell_price
      t.integer :sell_date
      t.integer :sell_quantity
      t.integer :profit_loss

      t.timestamps
    end
  end
end
