class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :customer_name
      t.string :mobile
      t.string :address

      t.timestamps null: false
    end
  end
end
