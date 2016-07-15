class CreateProductEntries < ActiveRecord::Migration
  def change
    create_table :product_entries do |t|
      t.integer :no_of_box
      t.integer :qty_in_box
      t.integer :total_qty
      t.decimal :mrp
      t.decimal :selling_price
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
