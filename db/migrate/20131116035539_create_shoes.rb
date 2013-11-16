class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :item
      t.string :gender
      t.decimal :price, :precision=>8, :scale=>2
      t.text :comment

      t.timestamps
    end
  end
end
