class ChangePriceFieldToDecimalInList < ActiveRecord::Migration
  def up
    change_column :lists, :price, :decimal, :precision => 8, :scale => 2
  end

  def down
    change_column :lists, :price, :float
  end
end
