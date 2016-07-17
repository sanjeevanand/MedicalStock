# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160717190641) do

  create_table "customers", force: :cascade do |t|
    t.string   "customer_id",   limit: 255
    t.string   "customer_name", limit: 255
    t.string   "mobile",        limit: 255
    t.string   "address",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "donuts", force: :cascade do |t|
    t.string   "flavor",     limit: 255
    t.float    "calories",   limit: 24
    t.string   "brand",      limit: 255
    t.integer  "shape",      limit: 4
    t.string   "title",      limit: 255
    t.string   "country",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "item_totals", force: :cascade do |t|
    t.integer  "total",      limit: 4
    t.integer  "item_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "item_totals", ["item_id"], name: "index_item_totals_on_item_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "uni_id",     limit: 255
    t.string   "name",       limit: 255
    t.string   "cname",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "product_entries", force: :cascade do |t|
    t.integer  "no_of_box",     limit: 4
    t.integer  "qty_in_box",    limit: 4
    t.integer  "total_qty",     limit: 4
    t.decimal  "mrp",                     precision: 10
    t.decimal  "selling_price",           precision: 10
    t.integer  "item_id",       limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "product_entries", ["item_id"], name: "index_product_entries_on_item_id", using: :btree

  create_table "product_solds", force: :cascade do |t|
    t.integer  "no_of_box",  limit: 4
    t.integer  "qty_in_box", limit: 4
    t.integer  "total_qty",  limit: 4
    t.integer  "item_id",    limit: 4
    t.integer  "sell_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "product_solds", ["item_id"], name: "index_product_solds_on_item_id", using: :btree
  add_index "product_solds", ["sell_id"], name: "index_product_solds_on_sell_id", using: :btree

  create_table "sells", force: :cascade do |t|
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "sells", ["customer_id"], name: "index_sells_on_customer_id", using: :btree

  add_foreign_key "item_totals", "items"
  add_foreign_key "product_entries", "items"
  add_foreign_key "product_solds", "items"
  add_foreign_key "product_solds", "sells"
  add_foreign_key "sells", "customers"
end
