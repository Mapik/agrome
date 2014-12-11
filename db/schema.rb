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

ActiveRecord::Schema.define(version: 20141209195117) do

  create_table "area_units", force: true do |t|
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "added_column"
    t.string   "unit_symbol"
  end

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

  create_table "cultivations", force: true do |t|
    t.integer  "croptype_id"
    t.string   "name"
    t.integer  "croparea"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "season_id"
    t.string   "unitsymbol"
    t.string   "variety"
  end

  add_index "cultivations", ["croptype_id"], name: "index_cultivations_on_croptype_id"

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
    t.float    "area"
    t.integer  "area_unit_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unit_symbol"
    t.integer  "archive"
    t.string   "archive_string"
  end

  add_index "fields", ["area_unit_id"], name: "index_fields_on_area_unit_id"
  add_index "fields", ["user_id", "created_at"], name: "index_fields_on_user_id_and_created_at"
  add_index "fields", ["user_id"], name: "index_fields_on_user_id"

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

  create_table "task_types", force: true do |t|
    t.string   "name"
    t.integer  "is_for_cultivation"
    t.integer  "is_for_mob"
    t.integer  "is_for_machine"
    t.integer  "is_for_building"
    t.integer  "is_for_warehouse"
    t.integer  "is_for_offer"
    t.integer  "is_for_groupdeal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "div_id"
    t.date     "operation_date"
    t.float    "operation_costs"
  end

  create_table "tasks", force: true do |t|
    t.integer  "user_id"
    t.integer  "task_type_id"
    t.integer  "cultivation_id"
    t.integer  "submob_id"
    t.integer  "machine_id"
    t.integer  "building_id"
    t.integer  "warehouse_id"
    t.integer  "is_done"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "is_for_cultivation"
    t.integer  "is_for_mob"
    t.integer  "is_for_machine"
    t.integer  "is_for_building"
    t.integer  "is_for_warehouse"
    t.integer  "is_for_offer"
    t.integer  "is_for_groupdeal"
    t.date     "operation_date"
    t.float    "operation_costs"
    t.string   "comment"
    t.string   "leasing_time"
    t.string   "leasing_instalment"
    t.string   "lessor"
    t.string   "stock_type"
    t.string   "quantity"
    t.string   "unit_price"
    t.string   "stock_source"
    t.string   "repaired_element"
    t.string   "buyer_name"
    t.string   "meter_price"
    t.string   "volumeunit_id"
    t.string   "used_for"
    t.string   "seller_name"
    t.string   "payment_form"
    t.string   "Reason"
    t.string   "vet_name"
    t.string   "medicine_cost"
    t.string   "vet_cost"
    t.string   "medicine"
    t.string   "medicine_dose"
    t.string   "treatment_duration"
    t.string   "activity_duration"
    t.string   "fuel_consumption"
    t.string   "is_service"
    t.string   "service_per_hour_cost"
    t.string   "service_provider"
    t.string   "weather_comment"
    t.string   "fertilizer"
    t.string   "fertilizer_name"
    t.string   "fertilizer_dose"
    t.string   "machine_hours"
    t.string   "spraying_type"
    t.string   "spraying_name"
    t.string   "spraying_dose"
    t.string   "croptype_id"
    t.string   "stock_name"
    t.integer  "is_for_budget"
    t.integer  "is_for_calendar"
  end

  add_index "tasks", ["croptype_id"], name: "index_tasks_on_croptype_id"
  add_index "tasks", ["volumeunit_id"], name: "index_tasks_on_volumeunit_id"

  create_table "user_types", force: true do |t|
    t.string   "user_type"
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
    t.string   "volumesymbol"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "is_for_livestock"
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
