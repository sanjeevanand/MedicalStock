class CreateItemTotals < ActiveRecord::Migration
  def change
    create_table :item_totals do |t|
      t.integer :total
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
