class CreateRepairs < ActiveRecord::Migration
  def change
    create_table :repairs do |t|
      t.string :item
      t.string :garment
      t.decimal :price, :precision=>8, :scale=>2
      t.text :comment

      t.timestamps
    end
  end
end
