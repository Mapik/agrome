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

ActiveRecord::Schema.define(version: 20141105203544) do

# Could not dump table "area_units" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "buildings", force: true do |t|
    t.integer  "user_id"
    t.integer  "buildingtype_id"
    t.string   "name"
    t.date     "build_date"
    t.integer  "area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "archive"
  end

  add_index "buildings", ["user_id"], name: "index_buildings_on_user_id"

  create_table "buildingtypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "croptypes", force: true do |t|
    t.string   "cropname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "cultivations" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "equipment", force: true do |t|
    t.integer  "user_id"
    t.integer  "equipmenttype_id"
    t.string   "name"
    t.date     "production_date"
    t.string   "manufacturer_name"
    t.string   "model_name"
    t.date     "buy_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "archive"
  end

  add_index "equipment", ["user_id"], name: "index_equipment_on_user_id"

  create_table "equipmenttypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "machines", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.date     "production_date"
    t.string   "manufacturer_name"
    t.string   "model_name"
    t.date     "buy_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "archive"
    t.integer  "machinetype_id"
  end

  add_index "machines", ["machinetype_id"], name: "index_machines_on_machinetype_id"
  add_index "machines", ["user_id"], name: "index_machines_on_user_id"

  create_table "machinetypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mobs", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "quantity"
    t.integer  "mobtype_id"
    t.date     "creation_date"
    t.integer  "archive"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "breed"
  end

  add_index "mobs", ["user_id"], name: "index_mobs_on_user_id"

  create_table "mobtypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "season_lists", force: true do |t|
    t.string   "season_name_from_list"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasonlists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", force: true do |t|
    t.integer  "field_id"
    t.string   "season_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seasonlist_id"
  end

  add_index "seasons", ["field_id", "season_name"], name: "index_seasons_on_field_id_and_season_name"
  add_index "seasons", ["field_id"], name: "index_seasons_on_field_id"

  create_table "submobs", force: true do |t|
    t.integer  "mob_id"
    t.string   "name"
    t.integer  "quantity"
    t.date     "creation_date"
    t.integer  "archive"
    t.string   "breed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submobs", ["mob_id"], name: "index_submobs_on_mob_id"

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

  create_table "volumeunits", force: true do |t|
    t.string   "name"
    t.string   "symbol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "warehouses", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "volume"
    t.integer  "volumeunit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "archive"
  end

  add_index "warehouses", ["user_id"], name: "index_warehouses_on_user_id"

end
