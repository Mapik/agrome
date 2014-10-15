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

ActiveRecord::Schema.define(version: 20141015052814) do

# Could not dump table "area_units" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "fields", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.decimal  "area",           precision: 16, scale: 4
    t.integer  "area_unit_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unit_symbol"
    t.integer  "archive"
    t.string   "archive_string"
  end

  create_table "user_types", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.integer  "user_type_id"
    t.integer  "number_of_hectars"
    t.string   "main_cultivation"
    t.string   "main_herd"
    t.integer  "size_of_herd"
    t.string   "main_production_type"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "remember_digest"
    t.boolean  "admin",                default: false
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["name"], name: "index_users_on_name", unique: true

end
