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

ActiveRecord::Schema.define(version: 20151001003947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alsoboughts", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "alsogot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buyers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "address"
    t.string   "suburb"
    t.string   "city"
    t.string   "state"
    t.string   "post_code"
    t.string   "country"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lineitems", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderlines", force: :cascade do |t|
    t.string   "product_name"
    t.integer  "quantity"
    t.decimal  "total_price"
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "suburb"
    t.string   "state"
    t.string   "post_code"
    t.string   "country"
    t.date     "shipped"
    t.integer  "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "list_price"
    t.string   "image"
    t.boolean  "available"
    t.integer  "quantity"
    t.decimal  "postage"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
