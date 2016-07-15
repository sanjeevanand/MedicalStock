class CreateProductSolds < ActiveRecord::Migration
  def change
    create_table :product_solds do |t|
      t.integer :no_of_box
      t.integer :qty_in_box
      t.integer :total_qty
      t.references :item, index: true, foreign_key: true
      t.references :sell, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
