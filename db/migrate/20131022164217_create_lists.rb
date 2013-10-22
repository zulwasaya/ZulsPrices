class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :item
      t.string :gender
      t.float :price
      t.text :comments

      t.timestamps
    end
  end
end
