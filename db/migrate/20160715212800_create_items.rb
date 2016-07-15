class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :uni_id
      t.string :name
      t.string :cname

      t.timestamps null: false
    end
  end
end
