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

ActiveRecord::Schema.define(version: 20160330133059) do

  create_table "tickers", force: :cascade do |t|
    t.string   "company_name"
    t.string   "ticker"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  create_table "value_portfolios", force: :cascade do |t|
    t.string   "portfolio_name"
    t.string   "initial_investment"
    t.string   "investment_increase"
    t.string   "share_price"
    t.string   "commission_paid"
    t.string   "date_of_trade"
    t.string   "stock_symbol"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "value_portfolios", ["user_id", "created_at"], name: "index_value_portfolios_on_user_id_and_created_at"
  add_index "value_portfolios", ["user_id"], name: "index_value_portfolios_on_user_id"

end
