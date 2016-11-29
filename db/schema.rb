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

ActiveRecord::Schema.define(version: 20161129112927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_lines", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "promotion_id"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["order_id"], name: "index_order_lines_on_order_id", using: :btree
    t.index ["promotion_id"], name: "index_order_lines_on_promotion_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.integer  "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id", using: :btree
  end

  create_table "promotions", force: :cascade do |t|
    t.integer  "seller_id"
    t.integer  "initialquantity"
    t.integer  "remainingquantity"
    t.text     "description"
    t.string   "unit"
    t.datetime "duration"
    t.boolean  "promotionstatus"
    t.string   "producttype"
    t.integer  "code"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["seller_id"], name: "index_promotions_on_seller_id", using: :btree
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "city"
    t.text     "description"
    t.string   "category"
    t.string   "email"
    t.string   "phonenumber"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "order_lines", "orders"
  add_foreign_key "order_lines", "promotions"
  add_foreign_key "orders", "buyers"
  add_foreign_key "promotions", "sellers"
end
